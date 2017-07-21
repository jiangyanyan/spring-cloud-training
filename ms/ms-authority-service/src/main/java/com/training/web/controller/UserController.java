package com.training.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.training.model.User;
import com.training.service.UserService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;

@Api(value = "UserController", description = "用户相关API")
@RestController
@RequestMapping(value = "/api/user")
public class UserController {
	@Autowired
	private DiscoveryClient discoveryClient;
	
	@Autowired
	private UserService userService;
	
	@ApiOperation(value = "获取用户信息", notes = "根据id获取用户信息")
	@ApiImplicitParam(name = "id", value = "ID", required = true, dataType = "Long", paramType = "query")
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	  public User findById(@RequestParam(value = "id", required = true) Long id) {
	    User user = userService.selectById(id);
	    return user;
	  }
	
	 /**
	   * 本地服务实例的信息
	   * @return
	   */
	  @GetMapping("/instance-info")
	  public ServiceInstance showInfo() {
	    ServiceInstance localServiceInstance = this.discoveryClient.getLocalServiceInstance();
	    return localServiceInstance;
	  }

}
