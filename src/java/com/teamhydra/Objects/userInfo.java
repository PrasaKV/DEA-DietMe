
package com.teamhydra.Objects;

import java.util.List;

/**
 *
 * @author Prasad
 */
public class userInfo {
                
                private int userId;
                private String name;
                private String email;
                private String password;
                private int phone;
                private List address;
    
                                
                public void setId (int userId)
                {
                    this.userId = userId;
                }
                public void setName (String name)
                {
                    this.name = name;
                }
                public void setEmail (String email)
                {
                    this.email = email;
                }
                public void setPassword (String password)
                {
                    this.password = password;
                }
                public void setPhone (int phone)
                {
                    this.phone = phone;
                }
                public void setAddress (List address)
                {
                    this.address = address;
                }
}
