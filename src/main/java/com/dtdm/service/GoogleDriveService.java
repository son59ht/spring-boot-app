package com.dtdm.service;

import com.google.api.services.drive.model.File;

public interface GoogleDriveService {
	
	public File upLoadFile(String fileName,String filePath,String mimeType);

}