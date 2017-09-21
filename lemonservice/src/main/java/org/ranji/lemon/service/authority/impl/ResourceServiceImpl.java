package org.ranji.lemon.service.authority.impl;

import java.util.List;

import org.ranji.lemon.model.authority.Resource;
import org.ranji.lemon.persist.authority.prototype.IResourceDao;
import org.ranji.lemon.service.authority.prototype.IResourceService;
import org.ranji.lemon.service.common.impl.GenericServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ResourceServiceImpl extends GenericServiceImpl<Resource, Integer> implements IResourceService {

	@Autowired
	IResourceDao resourceDao;
	
	@Override
	public void saveResourceOperation(int resourceId, int operationId) {
		 resourceDao.saveResourceAndOperation(resourceId, operationId);

	}

	@Override
	public void deleteResourceOperation(int resourceId, int operationId) {
		resourceDao.deleteResourceAndOperation(resourceId, operationId);

	}

	@Override
	public void deleteROsByResourceId(int resourceId) {
		resourceDao.deleteROsByResourceId(resourceId);

	}

	@Override
	public List<Integer> findROsByResourceId(int resourceId) {
		
		return resourceDao.findROsByResourceId(resourceId);
	}

}
