package org.perl6.nqp.truffle.sixmodel.reprs;

import com.oracle.truffle.api.object.DynamicObject;
import com.oracle.truffle.api.object.DynamicObjectFactory;
import com.oracle.truffle.api.object.Location;
import com.oracle.truffle.api.object.Property;
import com.oracle.truffle.api.object.Shape;
import java.util.ArrayList;
import java.util.HashMap;
import org.perl6.nqp.truffle.runtime.NQPHash;
import org.perl6.nqp.truffle.sixmodel.REPR;
import org.perl6.nqp.truffle.sixmodel.SerializationContext;
import org.perl6.nqp.truffle.sixmodel.SerializationReader;
import org.perl6.nqp.truffle.sixmodel.STable;

public class P6opaque extends REPR {
    private STable stable;

    private Shape shape;

    /**
     * List of class handles that have attributes in this type.
     */
    public Object[] classHandles;

    /**
     * Array of attribute name to hint mappings.
     */
    public HashMap<String, Integer>[] nameToHintMap;

    private String[] attributeNames;

    /**
     * Auto-viv container types.
     */
    public Object[] autoVivContainers;

    /**
     * Flattened STables for attributes (null if reference attribute).
     */
    private STable[] flattenedSTables;

    /**
     * Is the type multiply inheriting?
     */
    private boolean mi;

    /**
     * Unbox and delegation slots; -1 if no such unbox slot.
     */
    private int unboxIntSlot = -1;
    private int unboxNumSlot = -1;
    private int unboxStrSlot = -1;
    private int unboxObjSlot = -1;
    private int posDelSlot = -1;
    private int assDelSlot = -1;

    public P6opaque(STable stable) {
        stable = stable;
        shape = P6opaqueObjectLayoutImpl.INSTANCE.createP6opaqueObjectShape(stable).getShape();
    }

    @Override
    public Object deserializeStub() {
        return shape.newInstance();
    }

    @Override
    public Object allocate() {
        return shape.newInstance();
    }

    @Override
    public void setSTable(Object obj, STable stable) {
        P6opaqueObjectLayoutImpl.INSTANCE.setStable((DynamicObject) obj, stable);
    }

    @Override
    public void setSc(Object obj, SerializationContext sc) {
        P6opaqueObjectLayoutImpl.INSTANCE.setSc((DynamicObject) obj, sc);
    }

    @Override
    public void deserializeFinish(SerializationReader reader, Object uncastObj) {
        DynamicObject obj = (DynamicObject) uncastObj;
        obj.setShapeAndGrow(obj.getShape(), shape);
        for (int i = 0; i < flattenedSTables.length; i++) {
            Object value = flattenedSTables[i] == null
                ? reader.readRef()
                : flattenedSTables[i].repr.deserializeInline(reader);
            if (!obj.set(attributeNames[i], value)) {
                throw new RuntimeException("Can't set attribute");
            }
        }
    }

    private void buildShape() {
        Shape.Allocator allocator = P6opaqueObjectLayoutImpl.P6OPAQUE_OBJECT_ALLOCATOR.copy();

        for (int i = 0; i < classHandles.length; i++) {
          for (String name : nameToHintMap[i].keySet()) {
            Location location = allocator.locationForType(Object.class);
            Property property = Property.create(
                name,
                location,
                0);
            shape = shape.addProperty(property);
          }
        }
    }

    @Override
    public void deserializeReprData(SerializationReader reader, STable stable) {
        // Get attribute count.
        int numAttributes = (int)reader.readLong();

        // Get list of any flattened in STables.
        flattenedSTables = new STable[numAttributes];
        for (int i = 0; i < numAttributes; i++) {
            if (reader.readLong() != 0) {
                flattenedSTables[i] = reader.readSTableRef();
            }
        }

        // Read "is multiple inheritance" flag; can go straight into data.
        mi = reader.readLong() != 0;

        // Read any auto-viv values, if we have them.
        autoVivContainers = new Object[numAttributes];
        if (reader.readLong() != 0) {
            for (int i = 0; i < numAttributes; i++) {
                autoVivContainers[i] = reader.readRef();
            }
        }

        // Read unbox slot locations.
        unboxIntSlot = (int)reader.readLong();
        unboxNumSlot = (int)reader.readLong();
        unboxStrSlot = (int)reader.readLong();

        // Read unbox object slot, if there is one.
        if (reader.readLong() != 0) {
            unboxObjSlot = (int)reader.readLong();
        }

        attributeNames = new String[numAttributes];

        // Read in the name to index mapping.
        int numClasses = (int)reader.readLong();
        ArrayList<Object> classHandlesList = new ArrayList<Object>();
        ArrayList<HashMap<String, Integer>> nameToHintMapsList = new ArrayList<HashMap<String, Integer>>();

        for (int i = 0; i < numClasses; i++) {
            Object classHandle = reader.readRef();
            Object nameToHintObject = reader.readRef();
            if (nameToHintObject == null) {
                /* Nothing to do. */
            }
            else if (nameToHintObject instanceof NQPHash) {
                HashMap<String, Integer> nameToHintMap = new HashMap<String, Integer>();
                HashMap<String, Object> origMap = ((NQPHash)nameToHintObject).getContents();
                if (origMap.size() > 0) {
                    for (String key : origMap.keySet()) {
                        int index = (int)(long)origMap.get(key);
                        nameToHintMap.put(key, index);
                        attributeNames[index] = key;
                    }
                    classHandlesList.add(classHandle);

                    nameToHintMapsList.add(nameToHintMap);
                }
            }
            else {
                throw new RuntimeException("Unexpected hint map representation in deserialize");
            }
        }
        classHandles = classHandlesList.toArray(new Object[0]);
        nameToHintMap = nameToHintMapsList.toArray(new HashMap[0]);

        // Read delegate slots.
        posDelSlot = (int)reader.readLong();
        assDelSlot = (int)reader.readLong();

        buildShape();
    }
}
