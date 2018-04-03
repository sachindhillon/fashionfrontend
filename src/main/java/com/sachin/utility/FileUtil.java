package com.sachin.utility;

import java.io.File;
import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

public class FileUtil {
	private static final Logger logger=LoggerFactory.getLogger(FileUtil.class);
	
	private static final String imageDirectory="FashionWingImages";
	private static String rootPath=System.getProperty("catalina.home");
	public static boolean fileCopyFashion(MultipartFile file, String fileName)
	{
		File destination=new File(rootPath+File.separator+imageDirectory+File.separator+fileName);
		try {
			file.transferTo(destination);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

}
