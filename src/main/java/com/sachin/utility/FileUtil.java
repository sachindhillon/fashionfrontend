package com.sachin.utility;

import java.io.File;
import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileUtil {
	private static final Logger logger=LoggerFactory.getLogger(FileUtil.class);
	

	private static String rootPath="C:\\Users\\Muskan Rana\\eclipse-workspace\\fashionfront\\src\\main\\webapp\\resources\\images";
	public static boolean fileCopyFashion(MultipartFile file, String fileName)
	{
		System.out.println(rootPath);
		File destination=new File(rootPath+File.separator+fileName);
		String dest=destination.getAbsolutePath();
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
