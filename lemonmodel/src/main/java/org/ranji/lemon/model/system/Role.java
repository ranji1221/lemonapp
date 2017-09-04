package org.ranji.lemon.model.system;

import java.io.Serializable;
import java.util.List;

/**
 * Role 角色
 * @author lanbin
 * @date 2017-02-17
 */
public class Role implements Serializable {

	private static final long serialVersionUID = -544022878472536526L;
	private int id;
	private String text;
	private String description;

	// 用于EasyUI的树结构处理所做的关联
	private Integer parentId;
	private List<Role> children;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getParentId() {
		return parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	public List<Role> getChildren() {
		return children;
	}

	public void setChildren(List<Role> children) {
		this.children = children;
	}

}
