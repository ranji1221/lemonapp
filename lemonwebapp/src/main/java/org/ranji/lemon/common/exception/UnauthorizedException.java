package org.ranji.lemon.common.exception;

public class UnauthorizedException extends org.apache.shiro.authz.UnauthorizedException{
	private static final long serialVersionUID = 1L;

	public UnauthorizedException(){}
	public UnauthorizedException(String message){
		super(message);
	}
	
	@Override
	public void printStackTrace() {
		//-- super.printStackTrace();
		//System.out.println("aaaaaaaaaaaaa");
	}
	@Override
	public String toString() {
		return super.getMessage();
	}
}
