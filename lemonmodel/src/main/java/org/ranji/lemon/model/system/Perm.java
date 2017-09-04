package org.ranji.lemon.model.system;

import java.io.Serializable;
import java.util.List;

/**
 * Perm 权限
 * @author lanbin
 * @date 2017-02-17
 */
public class Perm implements Serializable {

	private static final long serialVersionUID = -1376249417803462377L;
	private int id;
	private String text;// 存放授权信息中模块的描述信息
	private String token;// 存放每个模块授权信息的代号，如user:list
	private String url;// 存放该模块的url，以备用

	// 用于EasyUI的树结构处理所做的关联
	private Integer parentId;
	private List<Perm> children;

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

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getParentId() {
		return parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	public List<Perm> getChildren() {
		return children;
	}

	public void setChildren(List<Perm> children) {
		this.children = children;
	}

	@Override
	public String toString() {
		return "Perm [id=" + id + ", text=" + text + ", token=" + token + ", url=" + url + ", parentId=" + parentId
				+ ", children=" + children + "]";
	}

}
