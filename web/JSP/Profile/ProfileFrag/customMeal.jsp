<%@page import="java.util.List"%>
<%@page import="com.teamhydra.util.commonUtill"%>
<%
            String  userId = "" ;
            List<String> portionName = commonUtill.mealPortionName();
            List<String> portionSize = commonUtill.mealPortionSize();
            List<String> portionCal = commonUtill.mealPortionCal();
            

    try {
                       userId = session.getAttribute("userId").toString();
            
                       if(userId == null)
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




<div class="createMealsDiv">
    <div class="createMealsTabsContainer">
        <h3 class="createMealsTabs" id="yourMeals">Your Meals</h3>
        <h3 class="createMealsTabs" id="createMeals">Create Meals</h3>
    </div>
    <div class="createMealsContent">
        <div id="yourMealsContainer">
            <div class="mealCardContainer"></div>
            <div class="mealsEditContainer">
                <div class="editMealsLeft"></div>
                <div class="editMealsRight"></div>
            </div>
        </div>
        <div id="createMealsContainer">
            <div class="createMealsLeft">
                <div class="createMealsLeftHeaderContainer">
                    <div class="createMealNameContainer">
                       <lable class="createMealLeftLable">Meal Name :</lable>
                        <input
                            class="createMealNameInput customInput"
                            id="createMealNameInput"
                            />
                    </div>
                    <div class="createMealDiscriptionContainer">
                        <lable class="createMealLeftLable">Discription :</lable>
                        <input
                            class="createMealDiscriptionInput customInput"
                            id="createMealDiscriptionInput"
                            />
                    </div>
                </div>
                <div class="createMealsPortionsContainer">
                    <div
                        class="createMealsPortionDivs"
                        id="createMealsPortionFirstDiv"
                        >
                        <div class="createMealsPortionFirstSection">
                            <lable class="createMealLeftLable createMealsPortionLable"
                                   >First Portion :</lable
                            >
                            <select
                                name="FirstPortion"
                                id="FirstPortionList"
                                class="createMealsPortionInput createMealsFirstSectionPortionTypeInput"
                                >
                                <option value="">Select a Portion</option>
                                <% for (int num = 0; num < portionName.size(); num++) { %>
                                    <option value="<%= portionName.get(num) %>"><%= portionName.get(num) %></option>
                                <% } %>
                                
                            </select>
                        </div>
                        <div class="createMealsPortionSecondSection">
                            <lable class="createMealLeftLable createMealsPortionLable"
                                   >Grams :</lable
                            >
                            <select
                                name="firstPortionSize"
                                class="createMealsPortionInput createMealsSecondSectionPortionType"
                                id="firstPortionSize"
                                >
                                <option value="">Select a Size</option>
                                <% for (int num = 0; num < portionSize.size(); num++) { %>
                                    <option value="<%= portionSize.get(num) %>"><%= portionSize.get(num) %></option>
                                <% } %>
                            </select>
                        </div>
                        <button
                            class="createMealsPortionRemoveButton buttonRed"
                            id="createMealsFirstPortionRemoveButton"
                            >
                            Remove
                        </button>
                    </div>
                    <div
                        class="createMealsPortionDivs"
                        id="createMealsPortionSecondDiv"
                        >
                        <div class="createMealsPortionFirstSection">
                            <lable class="createMealLeftLable createMealsPortionLable"
                                   >Second Portion :</lable
                            >
                            <select
                                name="secondPortion"
                                id="secondPortionList"
                                class="createMealsPortionInput createMealsFirstSectionPortionTypeInput"
                                >
                                <option value="">Select a Portion</option>
                                <% for (int num = 0; num < portionName.size(); num++) { %>
                                    <option value="<%= portionName.get(num) %>"><%= portionName.get(num) %></option>
                                <% } %>
                            </select>
                        </div>
                        <div class="createMealsPortionSecondSection">
                            <lable class="createMealLeftLable createMealsPortionLable"
                                   >Grams :</lable
                            >
                            <select
                                name="secondPortionSize"
                                class="createMealsPortionInput createMealsSecondSectionPortionType"
                                id="secondPortionSize"
                                >
                                <option value="">Select a Size</option>
                                <% for (int num = 0; num < portionSize.size(); num++) { %>  
                                    <option value="<%= portionSize.get(num) %>"><%= portionSize.get(num) %></option>
                                <% } %>
                            </select>
                        </div>
                        <button
                            class="createMealsPortionRemoveButton buttonRed"
                            id="createMealsSecondPortionRemoveButton"
                            >
                            Remove
                        </button>
                    </div>
                    <div
                        class="createMealsPortionDivs"
                        id="createMealsPortionThirdDiv"
                        >
                        <div class="createMealsPortionFirstSection">
                            <lable class="createMealLeftLable createMealsPortionLable"
                                   >Third Portion :</lable
                            >
                            <select
                                name="thirdPortion"
                                id="thirdPortionList"
                                class="createMealsPortionInput createMealsFirstSectionPortionTypeInput"
                                >
                                <option value="">Select a Portion</option>
                                <% for (int num = 0; num < portionName.size(); num++) { %>
                                    <option value="<%= portionName.get(num) %>"><%= portionName.get(num) %></option>
                                <% } %>
                            </select>
                        </div>
                        <div class="createMealsPortionSecondSection">
                            <lable class="createMealLeftLable createMealsPortionLable"
                                   >Grams :</lable
                            >
                            <select
                                name="thirdPortionSize"
                                class="createMealsPortionInput createMealsSecondSectionPortionType"
                                id="thirdPortionSize"
                                >
                                <option value="">Select a Size</option>
                                <value></value><% for (int num = 0; num < portionSize.size(); num++) { %>
                                    <option value="<%= portionSize.get(num) %>"><%= portionSize.get(num) %></option>
                                <% } %>
                            </select>
                        </div>
                        <button
                            class="createMealsPortionRemoveButton buttonRed"
                            id="createMealsThirdPortionRemoveButton"
                            >
                            Remove
                        </button>
                    </div>
                    <div
                        class="createMealsPortionDivs"
                        id="createMealsPortionFourthDiv"
                        >
                        <div class="createMealsPortionFirstSection">
                            <lable class="createMealLeftLable createMealsPortionLable"
                                   >Fourth Portion :</lable
                            >
                            <select
                                name="fourthPortion"
                                id="fourthPortionList"
                                class="createMealsPortionInput createMealsFirstSectionPortionTypeInput"
                                >
                                <option value="">Select a Portion</option>
                               <% for (int num = 0; num < portionName.size(); num++) { %>
                                    <option value="<%= portionName.get(num) %>"><%= portionName.get(num) %></option>
                                <% } %>
                            </select>
                        </div>
                        <div class="createMealsPortionSecondSection">
                            <lable class="createMealLeftLable createMealsPortionLable"
                                   >Grams :</lable
                            >
                            <select
                                name="fourthPortionSize"
                                class="createMealsPortionInput createMealsSecondSectionPortionType"
                                id="fourthPortionSize"
                                >
                                <option value="">Select a Size</option>
                               <% for (int num = 0; num < portionSize.size(); num++) { %>
                                    <option value="<%= portionSize.get(num) %>"><%= portionSize.get(num) %></option>
                                <% } %>
                            </select>
                        </div>
                        <button
                            class="createMealsPortionRemoveButton buttonRed"
                            id="createMealsFourthPortionRemoveButton"
                            >
                            Remove
                        </button>
                    </div>
                    <div
                        class="createMealsPortionDivs"
                        id="createMealsPortionFifthDiv"
                        >
                        <div class="createMealsPortionFirstSection">
                            <lable class="createMealLeftLable createMealsPortionLable"
                                   >Fifth Portion :</lable
                            >
                            <select
                                name="fifthPortion"
                                id="fifthPortionList"
                                class="createMealsPortionInput createMealsFirstSectionPortionTypeInput"
                                >
                                <option value="">Select a Portion</option>
                                <% for (int num = 0; num < portionName.size(); num++) { %>
                                    <option value="<%= portionName.get(num) %>"><%= portionName.get(num) %></option>
                                <% } %>
                            </select>
                        </div>
                        <div class="createMealsPortionSecondSection">
                            <lable class="createMealLeftLable createMealsPortionLable"
                                   >Grams :</lable
                            >
                            <select
                                name="fifthPortionSize"
                                class="createMealsPortionInput createMealsSecondSectionPortionType"
                                id="fifthPortionSize"
                                >
                                <option value="">Select a Size</option>
                                <% for (int num = 0; num < portionSize.size(); num++) { %>
                                    <option value="<%= portionSize.get(num) %>"><%= portionSize.get(num) %></option>
                                <% } %>
                            </select>
                        </div>
                        <button
                            class="createMealsPortionRemoveButton buttonRed "
                            id="createMealsFifthPortionRemoveButton"
                            >
                            Remove
                        </button>
                    </div>
                    <button id="createMealsAddPortion" class="buttonGreen">Add</button>
                    <button id="createMealsSave buttonGreen" class="buttonGreen">Save</button>
                </div>
            </div>
            <div class="createMealsRight">
                <div class="createMealsRightHeaderContainer">
                    <h3 class="createMealsCalories">Calories</h3>
                    <h3 class="createMealsPrice">Price</h3>
                </div>
                <div
                    class="createMealsRightPortionContainer"
                    id="createMealsRightPortion1"
                    >
                    <h3 class="createMealsPortionCal" id="createMealsPortion1Cal">
                        cal
                    </h3>
                    <h3
                        class="createMealsPortionPrice"
                        id="createMealsPortion1Price"
                        >
                        Rs..00
                    </h3>
                </div>
                <div
                    class="createMealsRightPortionContainer"
                    id="createMealsRightPortion2"
                    >
                    <h3 class="createMealsPortionCal" id="createMealsPortion2Cal">
                        cal
                    </h3>
                    <h3
                        class="createMealsPortionPrice"
                        id="createMealsPortion2Price"
                        >
                        Rs..00
                    </h3>
                </div>
                <div
                    class="createMealsRightPortionContainer"
                    id="createMealsRightPortion3"
                    >
                    <h3 class="createMealsPortionCal" id="createMealsPortion3Cal">
                        cal
                    </h3>
                    <h3
                        class="createMealsPortionPrice"
                        id="createMealsPortion3Price"
                        >
                        Rs..00
                    </h3>
                </div>
                <div
                    class="createMealsRightPortionContainer"
                    id="createMealsRightPortion4"
                    >
                    <h3 class="createMealsPortionCal" id="createMealsPortion4Cal">
                        cal
                    </h3>
                    <h3
                        class="createMealsPortionPrice"
                        id="createMealsPortion4Price"
                        >
                        Rs..00
                    </h3>
                </div>
                <div
                    class="createMealsRightPortionContainer"
                    id="createMealsRightPortion5"
                    >
                    <h3 class="createMealsPortionCal" id="createMealsPortion5Cal">
                        cal
                    </h3>
                    <h3
                        class="createMealsPortionPrice"
                        id="createMealsPortion5Price"
                        >
                        Rs..00
                    </h3>
                </div>
                <div class="createMealsRightPortionTotalContainer">
                    <h3 class="createMealsCalories" id="createMealsTotalCal">
                        Cal
                    </h3>
                    <h3 class="createMealsPrice" id="createMealsTotalPrice">
                        Rs..00
                    </h3>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
// <====================================== Defined Variables ======================================>
    
    window.onload = function () {
                        const createMealsPortionFirstDiv = document.getElementById(
                                "createMealsPortionFirstDiv"
                        );
                        const createMealsPortionSecondDiv = document.getElementById(
                                "createMealsPortionSecondDiv"
                        );
                        const createMealsPortionThirdDiv = document.getElementById(
                                "createMealsPortionThirdDiv"
                        );
                        const createMealsPortionFourthDiv = document.getElementById(
                                "createMealsPortionFourthDiv"
                        );
                        const createMealsPortionFifthDiv = document.getElementById(
                                "createMealsPortionFifthDiv"
                        );

                        const createMealsPortion1Cal = document.getElementById(
                                "createMealsPortion1Cal"
                        );
                        const createMealsPortion2Cal = document.getElementById(
                                "createMealsPortion2Cal"
                        );
                        const createMealsPortion3Cal = document.getElementById(
                                "createMealsPortion3Cal"
                        );
                        const createMealsPortion4Cal = document.getElementById(
                                "createMealsPortion4Cal"
                        );
                        const createMealsPortion5Cal = document.getElementById(
                                "createMealsPortion5Cal"
                        );

                        const createMealsPortion1Price = document.getElementById(
                                "createMealsPortion1Price"
                        );
                        const createMealsPortion2Price = document.getElementById(
                                "createMealsPortion2Price"
                        );
                        const createMealsPortion3Price = document.getElementById(
                                "createMealsPortion3Price"
                        );
                        const createMealsPortion4Price = document.getElementById(
                                "createMealsPortion4Price"
                        );
                        const createMealsPortion5Price = document.getElementById(
                                "createMealsPortion5Price"
                        );

                        const createMealsAddPortion = document.getElementById(
                                "createMealsAddPortion"
                        );
                        const createMealsSave = document.getElementById("createMealsSave");

                        const createMealsFirstPortionRemoveButton = document.getElementById(
                                "createMealsFirstPortionRemoveButton"
                        );

                        const createMealsSecondPortionRemoveButton = document.getElementById(
                                "createMealsSecondPortionRemoveButton"
                        );

                        const createMealsThirdPortionRemoveButton = document.getElementById(
                                "createMealsThirdPortionRemoveButton"
                        );

                        const createMealsFourthPortionRemoveButton = document.getElementById(
                                "createMealsFourthPortionRemoveButton"
                        );

                        const createMealsFifthPortionRemoveButton = document.getElementById(
                                "createMealsFifthPortionRemoveButton"
                        );

                        ////////////////////////////////////////////////////////////////////
                        const createMealNameInput = document.getElementById("createMealNameInput");
                        const createMealDiscriptionInput = document.getElementById("createMealDiscriptionInput");
				
                        
                        const firstPortionList = document.getElementById("firstPortionList");
                        const secondPortionList = document.getElementById("secondPortionList");
                        const thirdPortionList = document.getElementById("thirdPortionList");
                        const fourthPortionList = document.getElementById("fourthPortionList");
                        const fifthPortionList = document.getElementById("fifthPortionList");

                        const firstPortionSize = document.getElementById("firstPortionSize");
                        const secondPortionSize = document.getElementById("secondPortionSize");
                        const thirdPortionSize = document.getElementById("thirdPortionSize");
                        const fourthPortionSize = document.getElementById("fourthPortionSize");
                        const fifthPortionSize = document.getElementById("fifthPortionSize");
                        ////////////////////////////////////////////////////////////////////
                        const yourMeals = document.getElementById("yourMeals");
                        const createMeals = document.getElementById("createMeals");

                        const yourMealsContainer =
                                document.getElementById("yourMealsContainer");
                        const createMealsContainer = document.getElementById(
                                "createMealsContainer"
                        );
                        ////////////////////////////////////////////////////////////////////
                        createMealsPortionFirstDiv.style.display = "none";
                        createMealsPortionSecondDiv.style.display = "none";
                        createMealsPortionThirdDiv.style.display = "none";
                        createMealsPortionFourthDiv.style.display = "none";
                        createMealsPortionFifthDiv.style.display = "none";

                        createMealsPortion1Cal.style.display = "none";
                        createMealsPortion2Cal.style.display = "none";
                        createMealsPortion3Cal.style.display = "none";
                        createMealsPortion4Cal.style.display = "none";
                        createMealsPortion5Cal.style.display = "none";

                        createMealsPortion1Price.style.display = "none";
                        createMealsPortion2Price.style.display = "none";
                        createMealsPortion3Price.style.display = "none";
                        createMealsPortion4Price.style.display = "none";
                        createMealsPortion5Price.style.display = "none";

                        // <====================================== Functions Calling ======================================>

                        createMealsAddPortion.addEventListener("click", () => {
                                if (createMealsPortionFirstDiv.style.display === "none") {
                                        createMealsPortionFirstDiv.style.display = "flex";
                                        createMealsPortion1Cal.style.display = "block";
                                        createMealsPortion1Price.style.display = "block";
                                        createMealsFirstPortionRemoveButton.style.display = "block";
                                } else if (createMealsPortionSecondDiv.style.display === "none") {
                                        createMealsPortionSecondDiv.style.display = "flex";
                                        createMealsPortion2Cal.style.display = "block";
                                        createMealsPortion2Price.style.display = "block";
                                        createMealsSecondPortionRemoveButton.style.display = "block";
                                } else if (createMealsPortionThirdDiv.style.display === "none") {
                                        createMealsPortionThirdDiv.style.display = "flex";
                                        createMealsPortion3Cal.style.display = "block";
                                        createMealsPortion3Price.style.display = "block";
                                        createMealsThirdPortionRemoveButton.style.display = "block";
                                } else if (createMealsPortionFourthDiv.style.display === "none") {
                                        createMealsPortionFourthDiv.style.display = "flex";
                                        createMealsPortion4Cal.style.display = "block";
                                        createMealsPortion4Price.style.display = "block";
                                        createMealsFourthPortionRemoveButton.style.display = "block";
                                } else if (createMealsPortionFifthDiv.style.display === "none") {
                                        createMealsPortionFifthDiv.style.display = "flex";
                                        createMealsPortion5Cal.style.display = "block";
                                        createMealsPortion5Price.style.display = "block";
                                        createMealsFifthPortionRemoveButton.style.display = "block";
                                }
                        });
                };

                createMealsFirstPortionRemoveButton.addEventListener("click", () => {
                        createMealsPortionFirstDiv.style.display = "none";
                        createMealsPortion1Cal.style.display = "none";
                        createMealsPortion1Price.style.display = "none";
                        createMealsFirstPortionRemoveButton.style.display = "none";

                        firstPortionList.selectedIndex = -1;
                        firstPortionSize.selectedIndex = -1;
                });

                createMealsSecondPortionRemoveButton.addEventListener("click", () => {
                        createMealsPortionSecondDiv.style.display = "none";
                        createMealsPortion2Cal.style.display = "none";
                        createMealsPortion2Price.style.display = "none";
                        createMealsSecondPortionRemoveButton.style.display = "none";

                        secondPortionList.selectedIndex = -1;
                        secondPortionSize.selectedIndex = -1;
                });

                createMealsThirdPortionRemoveButton.addEventListener("click", () => {
                        createMealsPortionThirdDiv.style.display = "none";
                        createMealsPortion3Cal.style.display = "none";
                        createMealsPortion3Price.style.display = "none";
                        createMealsThirdPortionRemoveButton.style.display = "none";

                        thirdPortionList.selectedIndex = -1;
                        thirdPortionSize.selectedIndex = -1;
                });

                createMealsFourthPortionRemoveButton.addEventListener("click", () => {
                        createMealsPortionFourthDiv.style.display = "none";
                        createMealsPortion4Cal.style.display = "none";
                        createMealsPortion4Price.style.display = "none";
                        createMealsFourthPortionRemoveButton.style.display = "none";

                        fourthPortionList.selectedIndex = -1;
                        fourthPortionSize.selectedIndex = -1;
                });

                createMealsFifthPortionRemoveButton.addEventListener("click", () => {
                        createMealsPortionFifthDiv.style.display = "none";
                        createMealsPortion5Cal.style.display = "none";
                        createMealsPortion5Price.style.display = "none";
                        createMealsFifthPortionRemoveButton.style.display = "none";

                        fifthPortionList.selectedIndex = -1;
                        fifthPortionSize.selectedIndex = -1;
                });

                yourMeals.addEventListener("click", () => {
                        createMealsContainer.style.display = "none";
                        yourMealsContainer.style.display = "flex";
                });

                createMeals.addEventListener("click", () => {
                        yourMealsContainer.style.display = "none";
                        createMealsContainer.style.display = "flex";
                });
                
                 // <====================================== XML Functions Calling ======================================>

//    function createMeal() {
//
//        const xmlReq = new XMLHttpRequest();
//        const submitValue = "";
//        
//        if (createMealNameInput.value === null ) {
//                        alert("Please Fill Meal Name");
//                    } else if (firstPortionList.value === null) {
//                        alert("Please Fill FirstPortion");
//                    } else {
//                         submitValue   =  JSON.stringify({
//                                    mealName: createMealNameInput.value,
//                                    mealDiscription: createMealDiscriptionInput.value,
//                                    firstPortion: firstPortionList.value,
//                                    firstPortionSize: firstPortionSize.value,
//                                    secondPortion: secondPortionList.value,
//                                    secondPortionSize: secondPortionSize.value,
//                                    thirdPortion: thirdPortionList.value,
//                                    thirdPortionSize: thirdPortionSize.value,
//                                    fourthPortion: fourthPortionList.value,
//                                    fourthPortionSize: fourthPortionSize.value,
//                                    fifthPortion: fifthPortionList.value,
//                                    fifthPortionSize: fifthPortionSize.value
//                                });
//                    }
//                    
//        xmlReq.onreadystatechange = function() {
//            if (xmlReq.readyState === XMLHttpRequest.DONE) {
//                if (xmlReq.status === 200) {
//                    const mes = xmlReq.responseText;
//                    
//                } else if (xmlReq.status === 400) {
//                    console.log("Request Failed");
//                }
//            }
//        };
//        xmlReq.open("POST", "/DEA-DietMe/userId=<%= userId %>", true);
//        xmlReq.setRequestHeader("Content-Type", "application/json");
//        xmlReq.send(submitValue));
//    }
</script>