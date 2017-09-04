package org.ranji.lemon.model.system;

import java.io.Serializable;
import java.util.List;

public class Org implements Serializable {

	private static final long serialVersionUID = 3230398315889054310L;
	private int id;
	private String name;
	private String serialNum;
	private String workPlace;
	private String contact;
	private String leader;

	// 用于EasyUI的树结构处理所做的关联
	private Integer parentId;
	private List<Org> children;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSerialNum() {
		return serialNum;
	}

	public void setSerialNum(String serialNum) {
		this.serialNum = serialNum;
	}

	public String getWorkPlace() {
		return workPlace;
	}

	public void setWorkPlace(String workPlace) {
		this.workPlace = workPlace;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getLeader() {
		return leader;
	}

	public void setLeader(String leader) {
		this.leader = leader;
	}

	public Integer getParentId() {
		return parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	public List<Org> getChildren() {
		return children;
	}

	public void setChildren(List<Org> children) {
		this.children = children;
	}

	@Override
	public String toString() {
		return "Org [id=" + id + ", name=" + name + ", serialNum=" + serialNum + ", workPlace=" + workPlace
				+ ", contact=" + contact + ", leader=" + leader + ", parentId=" + parentId + ", children=" + children
				+ "]";
	}

}