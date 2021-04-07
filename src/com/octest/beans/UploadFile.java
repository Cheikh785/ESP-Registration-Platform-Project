package com.octest.beans;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class UploadFile {
	public static final String CHEMIN = "/home/cheikh/upload/";
	
	public void uploadFile(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String login = (String)session.getAttribute("login");
		String prenom1 = (String)session.getAttribute("prenom1");
		String prenom2 = (String)session.getAttribute("prenom2");
		String prenom3 = (String)session.getAttribute("prenom3");
		String nom = (String)session.getAttribute("nom");
		
		
		if(ServletFileUpload.isMultipartContent(request)){
			
			try{
				List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
				for(FileItem item : multiparts){
					if(!item.isFormField()){
						String name = new File(item.getName()).getName();
						item.write(new File(CHEMIN + File.separator + prenom1+prenom2+prenom3+"-"+nom+"-"+login+"-"+ name));			
					}
				}
				request.setAttribute("message", "File uploaded successfully.");
			}
			catch(Exception ex){
				request.setAttribute("message", "File upload failed due to : " + ex);
			}
		}else{
			request.setAttribute("message", "Sorry this servlet only handles file upload request.");
		}
	}
}
