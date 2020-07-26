package com.dtdm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dtdm.model.GgFile;
import com.dtdm.repository.GgFileRepository;

@Service
public class GgFileServiceImp implements GgFileService {

	@Autowired
	GgFileRepository ggFileRepository;
	
	@Override
	public GgFile findOne(int id) {
		// TODO Auto-generated method stub
		return ggFileRepository.findById(id);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		ggFileRepository.deleteById(id);
	}

	@Override
	public void save(GgFile ggFile) {
		// TODO Auto-generated method stub
		ggFileRepository.save(ggFile);
	}
	
}
