
<%@page import="com.teamhydra.util.assetsUrl"%>
<%@page import="com.teamhydra.Objects.UserInfo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
                
                  
    
    
       UserInfo userInfo = (UserInfo) session.getAttribute("userInfo");
       

       boolean isPasswordCorrect =true;
       
          if(userInfo.getId() > 0)
          {
                System.out.println(userInfo.getId()+ " = profileinfo,userId");

                    response.sendRedirect("/DEA-DietMe/JSP/Profile/profile.jsp");
                 
    
          }
          else
          {
               response.sendRedirect("/DEA-DietMe/JSP/Signup/Sign_In.jsp");
          }
          
//      if(isPasswordCorrect)
//      {
////            response.sendRedirect("JSP/Profile/profile.jsp");
//      }
  

       

%>
<div class="profileInfoDiv">
    <h1 class="profileInfoHeader">Profile Info</h1> 
    <div class="profileInfoContent">
        <div class="profileInfoContentLeft">
            <div class="profileInfoInputDiv" id="profileInfoNameDiv">
                <label for="profileInfoInsideDiv" class="profileInfoLable"
                       >Full Name: </label
                >
                <div class="profileInfoInsideDiv">
                    <form action="/DEA-DietMe/ProfileInfoController?column=name&userId=<%= userInfo.getId()%>" method="POST">
                    <input
                        type="text"
                        class="profileInfoInput customInput"
                        id="profileNameInput"
                        placeholder="<%= userInfo.getName()%>"
                        name="value"
                        />
                    
                    
                    <button class="profileInfoSave buttonGreen" id="nameSaveButton" type="submit">Save</button>
                    </form>
                        <button class="profileInfoEdit" id="nameEditButton"></button>
                </div>
                
            </div>
            <div class="profileInfoInputDiv" id="profileInfoEmailDiv">
                <label for="profileInfoInsideDiv" class="profileInfoLable"
                       >Email:</label
                >
                
                <div class="profileInfoInsideDiv">
                    <form action="/DEA-DietMe/ProfileInfoController?column=email&userId=<%= userInfo.getId()%>" method="POST">
                    <input
                        type="text"
                        class="profileInfoInput customInput"
                        id="profileEmailInput"
                        placeholder="<%= userInfo.getEmail()%>"
                        name="value"
                        />
                    <button class="profileInfoSave buttonGreen" id="emailSaveButton" type="submit">Save</button>
                    </form>
                    <button class="profileInfoEdit" id="emailEditButton"></button>
                </div>
            </div>
            <div class="profileInfoInputDiv" id="profileInfoPhoneDiv">
                <label for="profileInfoInsideDiv" class="profileInfoLable"
                       >Contact Number:</label
                >
                <div class="profileInfoInsideDiv">
                    <form action="/DEA-DietMe/ProfileInfoController?column=phone&userId=<%= userInfo.getId()%>" method="POST">
                    <input
                            type="number"
                            onwheel="this.blur()"
                            class="profileInfoInput customInput"
                            id="profilePhoneInput"
                            placeholder="<%= userInfo.getPhone()%>"
                            name="value"
                        />

                    <button class="profileInfoSave buttonGreen" id="phoneSaveButton" type="submit">Save</button>
                    </form>
                    <button class="profileInfoEdit" id="phoneEditButton"></button>
                </div>
            </div>
        </div>
        <div class="profileInfoContentRight">
            <label for="profileInfoInsideDiv" class="profileInfoLable" id="profileInfoAddressLable"
                   >Address:</label
            >
             <form action="/DEA-DietMe/ProfileInfoController?column=address&userId=<%= userInfo.getId()%>" method="POST">
            <div class="profileInfoInputDiv" id="profileInfoAddressDiv">  
               
                <input
                    type="text"
                    class="profileInfoInput customInput profileInfoAddressInput"
                    placeholder="12/A"
                    name="value"
                    />
                <input
                    type="text"
                    class="profileInfoInput customInput profileInfoAddressInput"
                    placeholder="ABC Street"
                    name="value"
                    />
                <input
                    type="text"
                    class="profileInfoInput customInput profileInfoAddressInput"
                    placeholder="Colombo"
                    name="value"
                    />

                <button class="profileInfoSave buttonGreen" id="addressSaveButton" type="submit">Save</button>
                
                <button class="profileInfoEdit" id="addressEditButton" type="button"></button>
            </div>
            </form>
        </div>

    </div>
    <div class="passwordChangeDiv">
        <button class="buttonGreen " id="changePassword">Change Password</button>
        <!-- <button class="buttonRed" id="deleteAccount">Delete Account</button> -->
        <div id="changePasswordShowDiv">
            <div class="currentPasswordDiv">
                <label for="currentPassword" class="passwordLable"></label>
                <form action="/DEA-DietMe/ProfileInfoController?column=currentPassword&userId=<%= userInfo.getId()%>" method="POST">
                <input
                    type="password"
                    class="passwordInput customInput"
                    id="currentPassword"
                    placeholder="Current Password"
                    name="currentPassword"
                    />
                <button class="buttonGreen buttonX" id="changePasswordSubmit" type="submit">Submit</button>
                </form>
            </div>
            <div class="newPasswordDiv">
                <label for="newPassword" class="passwordLable"></label>
                <input
                    type="password"
                    class="passwordInput customInput"
                    id="newPassword"
                    placeholder="New Password"
                    disable="<%=isPasswordCorrect%>"
                    />
                <label for="confirmPassword" class="passwordLable"></label>
                <input
                    type="password"
                    class="passwordInput customInput"
                    id="confirmPassword"
                    placeholder="Confirm Password"
                    disable="<%=isPasswordCorrect%>"
                    />
                <button class="buttonGreen buttonX" id="changePasswordSave">Save</button>
            </div>
        </div>
    </div>
</div>