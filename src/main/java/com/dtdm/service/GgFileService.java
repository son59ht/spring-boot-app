package com.dtdm.service;

import com.dtdm.model.GgFile;

public interface GgFileService {
	GgFile findOne(int id);
	void delete(int id);
	void save(GgFile ggFile);
}
