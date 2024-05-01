package com.teamhydra.util;

import javax.servlet.http.HttpServletRequest;
/**
 *
 * @author Prasad
 */
public class assetsUrl {
    
             public static String giveUrl(HttpServletRequest request, String path)
             {
                 
                    
                    String fileUrl = request.getScheme() + "://" + request.getServerName()+ ":" + request.getServerPort() + request.getServletContext() .getContextPath() + "/";
//                    String fileUrl = request.getScheme() + "://" + request.getServerName() + "/" + request.getServletContext().getContextPath() + "/";
                    String url = fileUrl + path;
                    
                 return url;
             }
             
}
