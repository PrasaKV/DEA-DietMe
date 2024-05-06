
<%@page import="java.sql.ResultSet"%>
<%@page import="com.teamhydra.util.commonUtill"%>
<%@page import="com.teamhydra.util.assetsUrl"%>
<%@page import="com.teamhydra.Objects.UserInfo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
            String  userId = "" ;
            String userName = "" ;
            String userEmail  = "";
            String userPhone = "";
            String userAddress = "";
            String line1 = "";
            String line2 = "";
            String line3 = "";
            
            ResultSet rs = null;
            

    try {
                        
                        userId = session.getAttribute("userId").toString();
                        userName = session.getAttribute("userName").toString();
                        userEmail = (String) session.getAttribute("userEmail");
                        userPhone = session.getAttribute("userPhone").toString();
                        
                        if(!userEmail.isEmpty())
                        {
                            rs = commonUtill.userInfo(userId);
                            
                           while(rs.next())
                           {
                                userName = rs.getString("name");
                                userEmail =  rs.getString("email");
                                userPhone = String.valueOf(rs.getInt("phone"));
                                userAddress = rs.getString("address");
                                
                                String address[] = userAddress.split(",");
                                if(address.length > 0)
                                {
                                     line1 = address[0];
                                }
                                if(address.length > 1)
                                {
                                    line2 = address[1];
                                }
                                if(address.length > 2)
                                {
                                    line3 = address[2];
                                }
                           }   
                        }   
                        
                        
                       if(userName.isEmpty())
                        {
                                response.sendRedirect("/home");
                                System.out.println("ProfileInfo If Redirect");
                                
                        }          
         else {
             response.sendRedirect("/DEA-DietMe/Profile");
         } 
    }
        catch (NullPointerException e) {
        System.out.println(e.getMessage() + " = Profile Info.jsp + Null Pointer ");
    }

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

                    <input
                        type="text"
                        class="profileInfoInput customInput"
                        id="profileNameInput"
                        placeholder="<%= userName %>"
                        name="value"
                        />


                    <button class="profileInfoSave buttonGreen" id="nameSaveButton" >Save</button>
                    <button class="profileInfoEdit" id="nameEditButton"></button>
                </div>

            </div>
            <div class="profileInfoInputDiv" id="profileInfoEmailDiv">
                <label for="profileInfoInsideDiv" class="profileInfoLable"
                       >Email:</label
                >

                <div class="profileInfoInsideDiv">

                    <input
                        type="text"
                        class="profileInfoInput customInput"
                        id="profileEmailInput"
                        placeholder="<%= userEmail %>"
                        name="value"
                        />
                    <button class="profileInfoSave buttonGreen" id="emailSaveButton" >Save</button>
                    </form>
                    <button class="profileInfoEdit" id="emailEditButton"></button>
                </div>
            </div>
            <div class="profileInfoInputDiv" id="profileInfoPhoneDiv">
                <label for="profileInfoInsideDiv" class="profileInfoLable"
                       >Contact Number:</label
                >
                <div class="profileInfoInsideDiv">
                    <input
                        type="tel"
                        onwheel="this.blur()"
                        class="profileInfoInput customInput"
                        id="profilePhoneInput"
                        placeholder="<%= userPhone%>"
                        name="value"
                        />

                    <button class="profileInfoSave buttonGreen" id="phoneSaveButton" >Save</button>
                    </form>
                    <button class="profileInfoEdit" id="phoneEditButton"></button>
                </div>
            </div>
        </div>
        <div class="profileInfoContentRight">
            <label for="profileInfoInsideDiv" class="profileInfoLable" id="profileInfoAddressLable">Address:</label>
            <div class="profileInfoInputDiv" id="profileInfoAddressDiv">  

                <input
                    type="text"
                    class="profileInfoInput customInput profileInfoAddressInput"
                    placeholder="<%=line1%>"
                    name="value"
                    />
                <input
                    type="text"
                    class="profileInfoInput customInput profileInfoAddressInput"
                    placeholder="<%=line2%>"
                    name="value"
                    />
                <input
                    type="text"
                    class="profileInfoInput customInput profileInfoAddressInput"
                    placeholder="<%=line3%>"
                    name="value"
                    />

                <button class="profileInfoSave buttonGreen" id="addressSaveButton" >Save</button>

                <button class="profileInfoEdit" id="addressEditButton" type="button"></button>
            </div>
            </form>
        </div>

    </div>
    <div class="passwordChangeDiv">
        <button class="buttonGreen " id="changePassword">Change Password</button>
        <!-- <button class="buttonRed" id="deleteAccount">Delete Account</button> -->
        <div id="changePasswordShowDiv">
            <div class="currentPasswordDiv" id="currentPasswordDiv">
                <label for="currentPassword" class="passwordLable"></label>

                <input
                    type="password"
                    class="passwordInput customInput"
                    id="currentPasswordInput"
                    placeholder="Current Password"
                    name="currentPassword"
                    />
                <button class="buttonGreen buttonX" id="changePasswordSubmit" >Submit</button>
                </form>
            </div>
            <div class="newPasswordDiv">
                <label for="newPassword" class="passwordLable"></label>
                <input
                    type="password"
                    class="passwordInput customInput"
                    id="newPasswordInput"
                    placeholder="New Password"
                    />
                <label for="confirmPassword" class="passwordLable"></label>
                <input
                    type="password"
                    class="passwordInput customInput"
                    id="confirmPasswordInput"
                    placeholder="Confirm Password"
                    />
                <button class="buttonGreen buttonX" id="changePasswordSave">Save</button>
            </div>
        </div>
    </div>
</div>
<script>

document.addEventListener("DOMContentLoaded",()=>{
    

    
      const profileNameInput = document.getElementById("profileNameInput");
    const nameEditButton = document.getElementById("nameEditButton");
    const nameSaveButton = document.getElementById("nameSaveButton");
    const profileEmailInput = document.getElementById("profileEmailInput");
    const emailEditButton = document.getElementById("emailEditButton");
    const emailSaveButton = document.getElementById("emailSaveButton");
    const profilePhoneInput = document.getElementById("profilePhoneInput");
    const phoneEditButton = document.getElementById("phoneEditButton");
    const phoneSaveButton = document.getElementById("phoneSaveButton");
    const profileAddressInputs = document.querySelectorAll(".profileInfoAddressInput");
    const addressEditButton = document.getElementById("addressEditButton");
    const addressSaveButton = document.getElementById("addressSaveButton");
    const passwordChangeButton = document.getElementById("changePassword");
    const changePasswordShowDiv = document.getElementById("changePasswordShowDiv");
    const currentPassword = document.getElementById("currentPassword");
    const changePasswordSubmit = document.getElementById("changePasswordSubmit");
    const currentPasswordInput = document.getElementById("currentPasswordInput");
    const newPasswordInput = document.getElementById("newPasswordInput");
    const confirmPasswordInput = document.getElementById("confirmPasswordInput");
    const changePasswordSave = document.getElementById("changePasswordSave");

    

    passwordChangeButton.addEventListener("click", () => {
        const display = getComputedStyle(changePasswordShowDiv).display;
        if (display === "none") {
            changePasswordShowDiv.style.display = "initial";
        } else {
            changePasswordShowDiv.style.display = "none";
        }
    });

    nameEditButton.addEventListener("click", () => {
        buttonBehavior(profileNameInput, nameEditButton, nameSaveButton, true);
    });

    nameSaveButton.addEventListener("click", () => {
        buttonBehavior(profileNameInput, nameEditButton, nameSaveButton, false);
    });

    emailEditButton.addEventListener("click", () => {
        buttonBehavior(profileEmailInput, emailEditButton, emailSaveButton, true);
    });

    emailSaveButton.addEventListener("click", () => {
        buttonBehavior(profileEmailInput, emailEditButton, emailSaveButton, false);
    });

    phoneEditButton.addEventListener("click", () => {
        buttonBehavior(profilePhoneInput, phoneEditButton, phoneSaveButton, true);
    });

    phoneSaveButton.addEventListener("click", () => {
        buttonBehavior(profilePhoneInput, phoneEditButton, phoneSaveButton, false);
    });

    addressEditButton.addEventListener("click", () => {
        addressButtonBehavior(profileAddressInputs, addressEditButton, addressSaveButton, true);
    });

    addressSaveButton.addEventListener("click", () => {
        addressButtonBehavior(profileAddressInputs, addressEditButton, addressSaveButton, false);
    });

    function buttonBehavior(input, edit, save, flagEdit = true) {
        if (flagEdit) {
            if (input.length) {
                input.forEach(item => {
                    item.style.pointerEvents = "initial";
                });
            } else {
                input.style.pointerEvents = "initial";
            }
            edit.style.display = "none";
            save.style.display = "initial";
        } else {
            if (input.length) {
                input.forEach(item => {
                    item.style.pointerEvents = "none";
                });
            } else {
                input.style.pointerEvents = "none";
            }
            edit.style.display = "initial";
            save.style.display = "none";
        }
    }

    function addressButtonBehavior(input, edit, save, flagEdit = true) {
        if (flagEdit) {
            if (input.length) {
                input.forEach(item => {
                    item.style.pointerEvents = "initial";
                });
            }
            edit.style.display = "none";
            save.style.display = "initial";
        } else {
            if (input.length) {
                input.forEach(item => {
                    item.style.pointerEvents = "none";
                });
            }
            edit.style.display = "initial";
            save.style.display = "none";
        }
    }

    nameSaveButton.addEventListener("click", function() {
        singleUpdate("name", profileNameInput);
    });

    emailSaveButton.addEventListener("click", function() {
        singleUpdate("email", profileEmailInput);
    });

    phoneSaveButton.addEventListener("click", function() {
        singleUpdate("phone", profilePhoneInput);
    });

    changePasswordSubmit.addEventListener("click", function() {
        passwordCheck(currentPasswordInput);
    });
    
    addressSaveButton.addEventListener("click", function(){
        
            let address = "";
            
            profileAddressInputs.forEach( line => {
                let value;
                
                if ( line.value === "")
                { 
                    value = line.placeholder;
                } 
                else
                {
                    value = line.value;
                }
            address +=  value + "," ;
    });
       
       singleUpdate("address", address);
    });

    function singleUpdate(column, input) {
        
        let value ="";
        if(column === "address")
        {
             value = input;
        }
        else
        {
            value = input.value;
        }
        const xmlReq = new XMLHttpRequest();
        xmlReq.onreadystatechange = function() {
            if (xmlReq.readyState === XMLHttpRequest.DONE) {
                if (xmlReq.status === 200) {
                    
                    const mes = xmlReq.responseText;
                    if (mes === "success") {
                        alert("Profile information updated successfully");
                    } else {
                        alert("Request Sent Successfully But No Response");
                    }
                } else if(xmlReq.status === 400)
                {
                    alert("Failed to update profile information");
                }
                else
                {
                    alert("Failed to Sens Request");
                }
            }
        };
        xmlReq.open("POST", "/DEA-DietMe/ProfileInfoController?column=" + column + "&userId=<%= userId%>", true);
        xmlReq.setRequestHeader("Content-Type", "application/json");
        xmlReq.send(JSON.stringify({ "value": value }));
}

    function passwordCheck(input) {
        const value = input.value;
        console.log(value + " - input password");
        const xmlReq = new XMLHttpRequest();
        xmlReq.onreadystatechange = function() {
            if (xmlReq.readyState === XMLHttpRequest.DONE) {
                if (xmlReq.status === 200) {
                    const mes = xmlReq.responseText;
                    if (mes === "password match") {
                        console.log("Password is Correct");
                        newPasswordInput.style.display = "initial";
                        confirmPasswordInput.style.display = "initial";
                        changePasswordSave.style.display = "initial";
                    } else if (mes === "password do not match") {
                        alert("Password Is Incorrect");
                    } else {
                        console.log("Request Sent Successfully But No Response");
                    }
                } else if (xmlReq.status === 400) {
                    console.log("Request Failed");
                }
            }
        };
        xmlReq.open("POST", "/DEA-DietMe/ChangePasswordController?request=passwordcheck&userId=<%= userId %>", true);
        xmlReq.setRequestHeader("Content-Type", "application/json");
        xmlReq.send(JSON.stringify({ "password": value }));
}
    
changePasswordSave.addEventListener("click", () => {
    
        if (newPasswordInput.value === confirmPasswordInput.value) {
            console.log("Password changed successfully");
            const xmlReq = new XMLHttpRequest();
            const password = confirmPasswordInput.value;
            xmlReq.onreadystatechange = () => {
                if (xmlReq.readyState === XMLHttpRequest.DONE) {
                    if (xmlReq.status === 200) {
                        const mes = xmlReq.responseText;
                        if (mes === "password change was successfull") {
                            alert("Password changed successfully");
                            
                            changePasswordShowDiv.style.display = "none";
                            
                            newPasswordInput.value = "";
                            confirmPasswordInput.value = "";
                            currentPasswordInput.value = "";
                            
                        } else {
                            console.log("request send but somthing is wrong");
                        }
                    } else if (xmlReq.status === 400) {
                        console.log("request send but no response");
                    }
                }
            };
            xmlReq.open("POST", "/DEA-DietMe/ChangePasswordController?request=passwordset&userId=<%=userId %>", true);
            xmlReq.setRequestHeader("Content-Type", "application/json");
            xmlReq.send(JSON.stringify({ "password": password }));
        } else {
            confirmPasswordInput.style.borderBottom = "2px solid red";
            alert("Passwords do not match");
        };
    });
})
</script>