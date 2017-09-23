package org.ranji.lemon.service.authority.impl;

import java.util.ArrayList;
import java.util.List;

import org.ranji.lemon.model.authority.Role;
import org.ranji.lemon.service.authority.prototype.IAuthorityService;
import org.ranji.lemon.service.authority.prototype.IOperationService;
import org.ranji.lemon.service.authority.prototype.IResourceService;
import org.ranji.lemon.service.authority.prototype.IRoleService;
import org.ranji.lemon.service.authority.prototype.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AuthorityServiceImpl implements IAuthorityService{
	
	@Autowired
	private IUserService userService;
	@Autowired
	private IRoleService roleService;
	@Autowired
	private IResourceService resourceService;
	@Autowired
	private IOperationService operationService;

	
	private List<Role> roles = new ArrayList<Role>();//存储角色
	private List<Role> recRole	=new ArrayList<Role>();  //存储递归角色
	
	@Override
	public List<Role> userFindRole() {
		// TODO Auto-generated method stub
		return null;
	}
	
	//查询用户的所有角色及父级角色
	public  List<Role> findRolesByUserId(int userId){	
		List<Role> list = userService.findRoleByUserId(userId);
		for(Role r:list){
			roles.add(r);
			int id = r.getRoleExtendPId();
			System.out.println(id);
			if(id>=0){
			 List<Role> r1=findRolesByRoleId(r.getRoleExtendPId());
			 roles.addAll(r1);
			}
		}
		return roles;
	}
	// 递归查询角色
	private List<Role> findRolesByRoleId(int roleId){
		Role r = roleService.find(roleId);
		recRole.add(r);
		if(r.getRoleExtendPId()>=0){
			findRolesByRoleId(r.getRoleExtendPId());
		}
		return recRole;
	}
}
