package com.teamhydra.util;

import javax.servlet.http.HttpServletRequest;
/**
 *
 * @author Prasad
 */
public class assetsUrl {
    
             public static String giveUrl(HttpServletRequest req, String path)
             {
                 
                    
                    String fileUrl = req.getScheme() + "://" + req.getServerName()+ ":" + req.getServerPort() + "/"+ req.getServletContext().getContextPath() + "/";
                    
                    String url = fileUrl + path;
                    
                 return url;
             }
             
}
