
<%@page import="com.teamhydra.util.assetsUrl"%>
<%@page import="com.teamhydra.Objects.UserInfo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
            String  userId = "" ;
            String userName = "redirect" ;
            String userEmail  = "";
            String userPhone = "";
            String userAddress = "";
            

    try {
        
                       userId = session.getAttribute("userId").toString();
                        userName = (String) session.getAttribute("userName");
                        userEmail = (String) session.getAttribute("userEmail");
                        userPhone = String.valueOf(session.getAttribute("userPhone"));
                        userAddress = (String) session.getAttribute("userAddress");
                        
                       
            
                       if(userName == null)
                        {
                                response.sendRedirect("/DEA-DietMe/Home");
                                System.out.println("ProfileInfo If Redirect");
                        }          
         else {
             response.sendRedirect("/DEA-DietMe/Profile");
         } 
    }
        catch (NullPointerException e) {
        System.out.println(e.getMessage() + " = Profile Info + ");
    }

%>

<script>
    /////////////////////////// Single Update Request Function /////////////////////////////////

    document.addEventListener("DOMContentLoaded", function() {

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

    function singleUpdate(column, input) {
        const value = input.value;
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
                } else {
                    alert("Failed to update profile information");
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
                        console.log("Password is Incorrect");
                    } else {
                        console.log("Request Sent Successfully But No Response");
                    }
                } else if (xmlReq.status === 400) {
                    console.log("Request Failed");
                }
            }
        }
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
                            
                            confirmPasswordInput.style.borderBottom = "2px solid green";
                        } else {
                            console.log("request send but somthing is wrong");
                        }
                    } else if (xmlReq.status === 400) {
                        console.log("request send but no response");
                    }
                }
            };
            xmlReq.open("POST", "/DEA-DietMe/ChangePasswordController?request=passwordset&userId=<%= userId %>", true);
            xmlReq.setRequestHeader("Content-Type", "application/json");
            xmlReq.send(JSON.stringify({ "password": password }));
        } else {
            confirmPasswordInput.style.borderBottom = "2px solid red";
            alert("Passwords do not match");
        };
    });

});





</script>
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
            <div class="currentPasswordDiv">
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