package com.training.common;

public enum ResultCode {
	/** 成功 */  
    SUCCESS("A000000", "成功"),  
    
    /** 参数无效 */  
    PARAMS_INVALID("A000001", "参数无效或参数格式不正确"),  
    
    /** 缺少参数 */  
    PARAMS_IS_NULL("A000002", "缺少参数"), 
    
    /** APIKEY无效 */  
    APIKEY_INVALID("A000003", "APIKEY无效"),  
    
    /** 数据为空 */  
    DATA_IS_NULL("A000004", "数据为空"), 
    
    /** 存在不可用数据 */  
    DATA_IS_DISABLED("A000005", "存在不可用数据"), 
    
    /** 数据重复 */  
    DATA_IS_DUPLICATED("A000006", "数据重复"), 
    
    /** 数据格式错误 */  
    DATA_FORMAT_ISVALID("A000007","数据格式错误"),
    
    /** 数据库操作错误 */  
    DATABASE_OPER_ERROR("A000008","数据库操作错误"),
    
    /** 未知异常 */  
    EXCEPTION_UNKNOWN("E000000", "未知异常"), 
    
	/** 401异常 */  
    EXCEPTION_401("E000004", "401错误"),
    
    /** 系统异常 */  
    EXCEPTION_SYS("E000001", "系统异常");
      
    private ResultCode(String value, String msg){  
        this.val = value;  
        this.msg = msg;  
    }  
      
    public String val() {  
        return val;  
    }  
  
    public String msg() {  
        return msg;  
    }  
      
    private String val;  
    private String msg;  
}
