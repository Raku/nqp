#
# TODO Add proper dependencies between various source and header files.
#

METAMODEL_SOURCE = src/6model/sixmodelobject.h src/6model/sixmodelobject.c \
                   src/6model/repr_registry.h src/6model/repr_registry.c \
                   src/6model/knowhow_bootstrapper.h src/6model/knowhow_bootstrapper.c \
                   src/6model/reprs/KnowHOWREPR.h src/6model/reprs/KnowHOWREPR.c \
                   src/6model/reprs/P6opaque.h src/6model/reprs/P6opaque.c \
                   src/6model/reprs/P6int.h src/6model/reprs/P6int.c \
                   src/6model/reprs/P6str.h src/6model/reprs/P6str.c \
                   src/6model/reprs/P6num.h src/6model/reprs/P6num.c \
                   src/6model/reprs/HashAttrStore.h src/6model/reprs/HashAttrStore.c \
                   src/6model/reprs/Uninstantiable.h src/6model/reprs/Uninstantiable.c \
                   src/6model/storage_spec.h src/6model/serialization_context.c \
                   src/6model/serialization_context.h src/6model/serialization.c \
                   src/6model/serialization.h src/guts/multi_dispatch.h \
                   src/guts/multi_dispatch.c src/6model/base64.c src/6model/base64.h \

METAMODEL_OBJS   = src/6model/sixmodelobject$(O) src/6model/repr_registry$(O) \
                   src/6model/knowhow_bootstrapper$(O) src/6model/reprs/KnowHOWREPR$(O) \
                   src/6model/reprs/P6opaque$(O) src/6model/reprs/P6int$(O) \
                   src/6model/reprs/P6str$(O) src/6model/reprs/P6num$(O) \
                   src/6model/reprs/HashAttrStore$(O) src/6model/reprs/Uninstantiable$(O) \
                   src/6model/serialization_context$(O) src/6model/serialization$(O) \
                   src/6model/base64$(O) \
				   src/guts/multi_dispatch$(O)


