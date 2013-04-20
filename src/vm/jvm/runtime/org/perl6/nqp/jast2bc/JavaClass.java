package org.perl6.nqp.jast2bc;

public class JavaClass {

	public final String name;
	public final byte[] bytes;
	
	public JavaClass(String name, byte[] bytes) {
		this.name = name;
		this.bytes = bytes;
	}
}
