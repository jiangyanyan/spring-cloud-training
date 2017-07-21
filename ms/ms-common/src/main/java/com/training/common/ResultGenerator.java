package com.training.common;

public class ResultGenerator {
	public static JsonResult genSuccessResult(Object object) {
		return new JsonResult(object);
	}
	
	public static JsonResult genFailResult(ResultCode code, String message) {
		return new JsonResult(code,message);
	}

}
