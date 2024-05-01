<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.List"%>
<%@page import="com.teamhydra.util.commonUtill"%>
<%
    String userId = "";
    List<String> portionName = commonUtill.mealPortionName();
    List<Integer> portionSize = commonUtill.mealPortionSize();
    List<Integer> portionCal = commonUtill.mealPortionCal();
    ResultSet result = commonUtill.getAllWhereUser("custommeal", Integer.parseInt(session.getAttribute("userId").toString()));

    try {
        userId = session.getAttribute("userId").toString();

        if (userId == null) {
            response.sendRedirect("/DEA-DietMe/Home");
            System.out.println("ProfileInfo If Redirect");
        } else {
            response.sendRedirect("/DEA-DietMe/Profile");
        }
    } catch (NullPointerException e) {
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


            <div class="mealsPopupContainer" id="mealsPopupContainerId">
                <div class="editMealsLeft">
                    <div class="popupCreateMealLeftContainer">
                        <div class="popupCreateMealsLeft">
                            <div class="popupCreateMealsLeftHeaderContainer">
                                <div class="popupCreateMealNameContainer">
                                    <input
                                        class="popupCreateMealNameInput"
                                        id="popupCreateMealNameInput"
                                        placeholder=""
                                        />
                                </div>
                                <div class="popupCreateMealDiscriptionContainer">
                                    <input
                                        class="popupCreateMealDiscriptionInput"
                                        id="popupCreateMealDiscriptionInput"
                                        value=""
                                        />
                                </div>
                            </div>
                            <div class="popupCreateMealsPortionsContainer">
                                <div
                                    class="popupCreateMealsPortionDivs"
                                    id="popupCreateMealsPortionFirstDiv"
                                    >
                                    <div class="popupCreateMealsPortionFirstSection">
                                        <lable
                                            class="popupCreateMealLeftLable popupCreateMealsPortionLable"
                                            >First Portion :</lable
                                        >
                                        <select
                                            name="firstPortion"
                                            id="popUpfirstPortionList"
                                            class="popupCreateMealsPortionInput popupCreateMealsFirstSectionPortionTypeInput"
                                            >
                                            <option value="0"></option>
                                            <% for (int num = 0; num < portionName.size(); num++) {%>
                                            <option value="<%= portionName.get(0)%>"><%= portionName.get(num)%></option>
                                            <% } %>
                                        </select>
                                    </div>
                                    <div class="popupCreateMealsPortionSecondSection">
                                        <lable
                                            class="popupCreateMealLeftLable popupCreateMealsPortionLable"
                                            >Grams :</lable
                                        >
                                        <select
                                            name="firstPortionSize"
                                            class="popupCreateMealsPortionInput popupCreateMealsSecondSectionPortionType"
                                            id="popUpfirstPortionSize"
                                            >
                                            <option value="0"></option>
                                            <% for (int num = 0; num < portionSize.size(); num++) {%>
                                            <option value="<%= portionSize.get(0)%>"><%= portionSize.get(num)%></option>
                                            <% } %>
                                        </select>
                                    </div>
                                    <button
                                        class="popupCreateMealsPortionRemoveButton buttonRed"
                                        id="popupCreateMealsFirstPortionRemoveButton"
                                        >
                                        Remove
                                    </button>
                                </div>
                                <div
                                    class="popupCreateMealsPortionDivs"
                                    id="popupCreateMealsPortionSecondDiv"
                                    >
                                    <div class="popupCreateMealsPortionFirstSection">
                                        <lable
                                            class="popupCreateMealLeftLable popupCreateMealsPortionLable"
                                            >Second Portion :</lable
                                        >
                                        <select
                                            name="secondPortion"
                                            id="popUpsecondPortionList"
                                            class="popupCreateMealsPortionInput popupCreateMealsFirstSectionPortionTypeInput"
                                            >
                                            <option value="0"></option>
                                            <% for (int num = 0; num < portionName.size(); num++) {%>
                                            <option value="<%= portionName.get(0)%>"><%= portionName.get(num)%></option>
                                            <% } %>
                                        </select>
                                    </div>
                                    <div class="popupCreateMealsPortionSecondSection">
                                        <lable
                                            class="popupCreateMealLeftLable popupCreateMealsPortionLable"
                                            >Grams :</lable
                                        >
                                        <select
                                            name="secondPortionSize"
                                            class="popupCreateMealsPortionInput popupCreateMealsSecondSectionPortionType"
                                            id="popUpsecondPortionSize"
                                            >
                                            <option value="0"></option>
                                            <% for (int num = 0; num < portionSize.size(); num++) {%>
                                            <option value="<%= portionSize.get(0)%>"><%= portionSize.get(num)%></option>
                                            <% } %>
                                        </select>
                                    </div>
                                    <button
                                        class="popupCreateMealsPortionRemoveButton buttonRed"
                                        id="popupCreateMealsSecondPortionRemoveButton"
                                        >
                                        Remove
                                    </button>
                                </div>
                                <div
                                    class="popupCreateMealsPortionDivs"
                                    id="popupCreateMealsPortionThirdDiv"
                                    >
                                    <div class="popupCreateMealsPortionFirstSection">
                                        <lable
                                            class="popupCreateMealLeftLable popupCreateMealsPortionLable"
                                            >Third Portion :</lable
                                        >
                                        <select
                                            name="thirdPortion"
                                            id="popUpthirdPortionList"
                                            class="popupCreateMealsPortionInput popupCreateMealsFirstSectionPortionTypeInput"
                                            >
                                            <option value="0"></option>
                                            <% for (int num = 0; num < portionName.size(); num++) {%>
                                            <option value="<%= portionName.get(0)%>"><%= portionName.get(num)%></option>
                                            <% } %>
                                        </select>
                                    </div>
                                    <div class="popupCreateMealsPortionSecondSection">
                                        <lable
                                            class="popupCreateMealLeftLable popupCreateMealsPortionLable"
                                            >Grams :</lable
                                        >
                                        <select
                                            name="thirdPortionSize"
                                            class="popupCreateMealsPortionInput popupCreateMealsSecondSectionPortionType"
                                            id="popUpthirdPortionSize"
                                            >
                                            <option value="0"></option>
                                            <% for (int num = 0; num < portionSize.size(); num++) {%>
                                            <option value="<%= portionSize.get(0)%>"><%= portionSize.get(num)%></option>
                                            <% } %>
                                        </select>
                                    </div>
                                    <button
                                        class="popupCreateMealsPortionRemoveButton buttonRed"
                                        id="popupCreateMealsThirdPortionRemoveButton"
                                        >
                                        Remove
                                    </button>
                                </div>
                                <div
                                    class="popupCreateMealsPortionDivs"
                                    id="popupCreateMealsPortionFourthDiv"
                                    >
                                    <div class="popupCreateMealsPortionFirstSection">
                                        <lable
                                            class="popupCreateMealLeftLable popupCreateMealsPortionLable"
                                            >Fourth Portion :</lable
                                        >
                                        <select
                                            name="fourthPortion"
                                            id="popUpfourthPortionList"
                                            class="popupCreateMealsPortionInput popupCreateMealsFirstSectionPortionTypeInput"
                                            >
                                            <option value="0"></option>
                                            <% for (int num = 0; num < portionName.size(); num++) {%>
                                            <option value="<%= portionName.get(0)%>"><%= portionName.get(num)%></option>
                                            <% } %>
                                        </select>
                                    </div>
                                    <div class="popupCreateMealsPortionSecondSection">
                                        <lable
                                            class="popupCreateMealLeftLable popupCreateMealsPortionLable"
                                            >Grams :</lable
                                        >
                                        <select
                                            name="fourthPortionSize"
                                            class="popupCreateMealsPortionInput popupCreateMealsSecondSectionPortionType"
                                            id="popUpfourthPortionSize"
                                            >
                                            <option value="0"></option>
                                            <% for (int num = 0; num < portionSize.size(); num++) {%>
                                            <option value="<%= portionSize.get(0)%>"><%= portionSize.get(num)%></option>
                                            <% } %>
                                        </select>
                                    </div>
                                    <button
                                        class="popupCreateMealsPortionRemoveButton buttonRed"
                                        id="popupCreateMealsFourthPortionRemoveButton"
                                        >
                                        Remove
                                    </button>
                                </div>
                                <div
                                    class="popupCreateMealsPortionDivs"
                                    id="popupCreateMealsPortionFifthDiv"
                                    >
                                    <div class="popupCreateMealsPortionFirstSection">
                                        <lable
                                            class="popupCreateMealLeftLable popupCreateMealsPortionLable"
                                            >Fifth Portion :</lable
                                        >
                                        <select
                                            name="fifthPortion"
                                            id="popUpfifthPortionList"
                                            class="popupCreateMealsPortionInput popupCreateMealsFirstSectionPortionTypeInput"
                                            >
                                            <option value="0"></option>
                                            <% for (int num = 0; num < portionName.size(); num++) {%>
                                            <option value="<%= portionName.get(0)%>"><%= portionName.get(num)%></option>
                                            <% } %>
                                        </select>
                                    </div>
                                    <div class="popupCreateMealsPortionSecondSection">
                                        <lable
                                            class="popupCreateMealLeftLable popupCreateMealsPortionLable"
                                            >Grams :</lable
                                        >
                                        <select
                                            name="fifthPortionSize"
                                            class="popupCreateMealsPortionInput popupCreateMealsSecondSectionPortionType"
                                            id="popUpfifthPortionSize"
                                            >
                                            <option value="0"></option>
                                            <% for (int num = 0; num < portionSize.size(); num++) {%>
                                            <option value="<%= portionSize.get(0)%>"><%= portionSize.get(num)%></option>
                                            <% } %>
                                        </select>
                                    </div>
                                    <button
                                        class="popupCreateMealsPortionRemoveButton buttonRed"
                                        id="popupCreateMealsFifthPortionRemoveButton"
                                        >
                                        Remove
                                    </button>
                                </div>
                                <div class="createMealPopupButtonDiv">
                                    <button id="popupCreateMealsAddPortion" class="buttonGreen">
                                        Add
                                    </button>
                                    <button id="popupCreateMealsSave" class="buttonGreen">
                                        Save
                                    </button>
                                    <button id="popupCreateMealsAddtocart" class="buttonGreen">
                                        Add To Cart
                                    </button>
                                    <button id="popupCreateMealsCancel" class="buttonGreen">
                                        Cancel
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="editMealsRight">
                    <div class="popupCreateMealsRight">
                        <div class="popupCreateMealsRightHeaderContainer">
                            <h3 class="popupCreateMealsCalories">Calories</h3>
                            <h3 class="popupCreateMealsPrice">Price</h3>
                        </div>
                        <div
                            class="popupCreateMealsRightPortionContainer"
                            id="popupCreateMealsRightPortion1"
                            >
                            <h3
                                class="popupCreateMealsPortionCal"
                                id="popupCreateMealsPortion1Cal"
                                >
                                Cal
                            </h3>
                            <h3
                                class="popupCreateMealsPortionPrice"
                                id="popupCreateMealsPortion1Price"
                                >
                                Rs..00
                            </h3>
                        </div>
                        <div
                            class="popupCreateMealsRightPortionContainer"
                            id="popupCreateMealsRightPortion2"
                            >
                            <h3
                                class="popupCreateMealsPortionCal"
                                id="popupCreateMealsPortion2Cal"
                                >
                                Cal
                            </h3>
                            <h3
                                class="popupCreateMealsPortionPrice"
                                id="popupCreateMealsPortion2Price"
                                >
                                Rs..00
                            </h3>
                        </div>
                        <div
                            class="popupCreateMealsRightPortionContainer"
                            id="popupCreateMealsRightPortion3"
                            >
                            <h3
                                class="popupCreateMealsPortionCal"
                                id="popupCreateMealsPortion3Cal"
                                >
                                Cal
                            </h3>
                            <h3
                                class="popupCreateMealsPortionPrice"
                                id="popupCreateMealsPortion3Price"
                                >
                                Rs..00
                            </h3>
                        </div>
                        <div
                            class="popupCreateMealsRightPortionContainer"
                            id="popupCreateMealsRightPortion4"
                            >
                            <h3
                                class="popupCreateMealsPortionCal"
                                id="popupCreateMealsPortion4Cal"
                                >
                                Cal
                            </h3>
                            <h3
                                class="popupCreateMealsPortionPrice"
                                id="popupCreateMealsPortion4Price"
                                >
                                Rs..00
                            </h3>
                        </div>
                        <div
                            class="popupCreateMealsRightPortionContainer"
                            id="popupCreateMealsRightPortion5"
                            >
                            <h3
                                class="popupCreateMealsPortionCal"
                                id="popupCreateMealsPortion5Cal"
                                >
                                Cal
                            </h3>
                            <h3
                                class="popupCreateMealsPortionPrice"
                                id="popupCreateMealsPortion5Price"
                                >
                                Rs..00
                            </h3>
                        </div>
                        <div class="popupCreateMealsRightPortionTotalContainer">
                            <h3 class="popupCreateMealsCalories" id="popupCreateMealsTotalCal">
                                Cal
                            </h3>
                            <h3 class="popupCreateMealsPrice" id="popupCreateMealsTotalPrice">
                                Rs..00
                            </h3>
                        </div>
                    </div>
                </div>
            </div>
            <% while (result.next()) {%>


            <div class="mealCardContainer" id="mealCardContainerId">
                <div class="createMealCard" id="createMealCard">
                    <img
                        src="https://media.istockphoto.com/id/168340083/photo/choosemyplate-healthy-food-and-plate-of-usda-balanced-diet-recommendation.jpg?s=612x612&w=0&k=20&c=S5OYuPg-n1fuOOgReQf9xPuFgA1i-UO54Uj2u1RD7iU="
                        alt="meal image"
                        class="createMealCardImage"
                        />
                    <div class="createMealCardContent">
                        <h3 class="createMealCardName" id="createMealCardName" data-mealName="<%=result.getString("mealName")%>"><%=result.getString("mealName")%></h3>
                        <h3 class="createMealCardPrice" id="createMealCardPrice">Rs.10</h3>
                        <input class="hiddenData" data-mealId="<%=result.getString("mealId")%>"/>
                        <input class="hiddenData" data-mealDiscription="<%=result.getString("mealDiscription")%>"/>
                        <input class="hiddenData" data-firstPortion="<%=result.getString("firstPortion")%>"/>
                        <input class="hiddenData" data-firstPortionSize="<%=result.getString("firstPortionSize")%>"/>
                        <input class="hiddenData" data-secondPortion="<%=result.getString("secondPortion")%>"/>
                        <input class="hiddenData" data-secondPortionSize="<%=result.getString("secondPortionSize")%>"/>
                        <input class="hiddenData" data-thirdPortion="<%=result.getString("thirdPortion")%>"/>
                        <input class="hiddenData" data-thirdPortionSize="<%=result.getString("thirdPortionSize")%>"/>
                        <input class="hiddenData" data-fourthPortion="<%=result.getString("fourthPortion")%>"/>
                        <input class="hiddenData" data-fourthPortionSize="<%=result.getString("fourthPortionSize")%>"/>
                        <input class="hiddenData" data-fifthPortion="<%=result.getString("fifthPortion")%>"/>
                        <input class="hiddenData" data-fifthPortionSize="<%=result.getString("fifthPortionSize")%>">


                        <button class="buttonGreen" id="createMealCardAddToCartButton">
                            Add To Cart
                        </button>
                    </div>
                </div>
            </div>
            <% } %>
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
                                name="firstPortion"
                                id="firstPortionList"
                                class="createMealsPortionInput createMealsFirstSectionPortionTypeInput"
                                >
                                <option value="">Select a Portion</option>
                                <% for (int num = 0; num < portionName.size(); num++) {%>
                                <option value="<%= portionName.get(num)%>"><%= portionName.get(num)%></option>
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
                                <option value="0">Select a Size</option>
                                <% for (int num = 0; num < portionSize.size(); num++) {%>
                                <option value="<%= portionSize.get(0)%>"><%= portionSize.get(num)%></option>
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
                                <option value="0">Select a Portion</option>
                                <% for (int num = 0; num < portionName.size(); num++) {%>
                                <option value="<%= portionName.get(num)%>"><%= portionName.get(num)%></option>
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
                                <option value="0">Select a Size</option>
                                <% for (int num = 0; num < portionSize.size(); num++) {%>  
                                <option value="<%= portionSize.get(num)%>"><%= portionSize.get(num)%></option>
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
                                <% for (int num = 0; num < portionName.size(); num++) {%>
                                <option value="<%= portionName.get(num)%>"><%= portionName.get(num)%></option>
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
                                <option value="0">Select a Size</option>
                                <value></value><% for (int num = 0; num < portionSize.size(); num++) {%>
                                <option value="<%= portionSize.get(num)%>"><%= portionSize.get(num)%></option>
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
                                <% for (int num = 0; num < portionName.size(); num++) {%>
                                <option value="<%= portionName.get(num)%>"><%= portionName.get(num)%></option>
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
                                <option value="0">Select a Size</option>
                                <% for (int num = 0; num < portionSize.size(); num++) {%>
                                <option value="<%= portionSize.get(num)%>"><%= portionSize.get(num)%></option>
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
                                <% for (int num = 0; num < portionName.size(); num++) {%>
                                <option value="<%= portionName.get(num)%>"><%= portionName.get(num)%></option>
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
                                <option value="0">Select a Size</option>
                                <% for (int num = 0; num < portionSize.size(); num++) {%>
                                <option value="<%= portionSize.get(num)%>"><%= portionSize.get(num)%></option>
                                <% }%>
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
                    <button id="createMealsSave" class="buttonGreen">Save</button>
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


        const createMealsPortionFirstDiv = document.getElementById("createMealsPortionFirstDiv");
        const createMealsPortionSecondDiv = document.getElementById("createMealsPortionSecondDiv");
        const createMealsPortionThirdDiv = document.getElementById("createMealsPortionThirdDiv");
        const createMealsPortionFourthDiv = document.getElementById("createMealsPortionFourthDiv");
        const createMealsPortionFifthDiv = document.getElementById("createMealsPortionFifthDiv");

        const createMealsPortion1Cal = document.getElementById("createMealsPortion1Cal");
        const createMealsPortion2Cal = document.getElementById("createMealsPortion2Cal");
        const createMealsPortion3Cal = document.getElementById("createMealsPortion3Cal");
        const createMealsPortion4Cal = document.getElementById("createMealsPortion4Cal");
        const createMealsPortion5Cal = document.getElementById("createMealsPortion5Cal");

        const createMealsPortion1Price = document.getElementById("createMealsPortion1Price");
        const createMealsPortion2Price = document.getElementById("createMealsPortion2Price");
        const createMealsPortion3Price = document.getElementById("createMealsPortion3Price");
        const createMealsPortion4Price = document.getElementById("createMealsPortion4Price");
        const createMealsPortion5Price = document.getElementById("createMealsPortion5Price");

        const createMealsAddPortion = document.getElementById("createMealsAddPortion");
        const createMealsSave = document.getElementById("createMealsSave");

        const createMealsFirstPortionRemoveButton = document.getElementById("createMealsFirstPortionRemoveButton");
        const createMealsSecondPortionRemoveButton = document.getElementById("createMealsSecondPortionRemoveButton");
        const createMealsThirdPortionRemoveButton = document.getElementById("createMealsThirdPortionRemoveButton");
        const createMealsFourthPortionRemoveButton = document.getElementById("createMealsFourthPortionRemoveButton");
        const createMealsFifthPortionRemoveButton = document.getElementById("createMealsFifthPortionRemoveButton");

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

        const popUpfirstPortionList = document.getElementById("popUpfirstPortionList");
        const popUpsecondPortionList = document.getElementById("popUpsecondPortionList");
        const popUpthirdPortionList = document.getElementById("popUpthirdPortionList");
        const popUpfourthPortionList = document.getElementById("popUpfourthPortionList");
        const popUpfifthPortionList = document.getElementById("popUpfifthPortionList");

        const popUpfirstPortionSize = document.getElementById("popUpfirstPortionSize");
        const popUpsecondPortionSize = document.getElementById("popUpsecondPortionSize");
        const popUpthirdPortionSize = document.getElementById("popUpthirdPortionSize");
        const popUpfourthPortionSize = document.getElementById("popUpfourthPortionSize");
        const popUpfifthPortionSize = document.getElementById("popUpfifthPortionSize");

        const yourMeals = document.getElementById("yourMeals");
        const createMeals = document.getElementById("createMeals");

        const yourMealsContainer = document.getElementById("yourMealsContainer");
        const createMealsContainer = document.getElementById("createMealsContainer");

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

            yourMeals.style.borderLeft = "3px solid #01ca5e";
            yourMeals.style.borderTop = "3px solid #01ca5e";
            yourMeals.style.borderRight = "3px solid #01ca5e";
            yourMeals.style.borderBottom = "3px solid #F0EFF4";

            createMeals.style.borderLeft = "none";
            createMeals.style.borderTop = "none";
            createMeals.style.borderRight = "none";
            createMeals.style.borderBottom = "3px solid #01ca5e";
        });

        createMeals.addEventListener("click", () => {
            yourMealsContainer.style.display = "none";
            createMealsContainer.style.display = "flex";

            createMeals.style.borderLeft = "3px solid #01ca5e";
            createMeals.style.borderTop = "3px solid #01ca5e";
            createMeals.style.borderRight = "3px solid #01ca5e";
            createMeals.style.borderBottom = "3px solid #F0EFF4";

            yourMeals.style.borderLeft = "none";
            yourMeals.style.borderTop = "none";
            yourMeals.style.borderRight = "none";
            yourMeals.style.borderBottom = "3px solid #01ca5e";
        });

        const mealsPopupContainer = document.getElementById("mealsPopupContainerId");
        const createMealCard = document.getElementById("createMealCard");
        const createMealCardContainer = document.getElementById("mealCardContainerId");
        const createMealCardName = document.getElementById("createMealCardName");
        const createMealCardPrice = document.getElementById("createMealCardPrice");
        const createMealCardAddToCartButton = document.getElementById("createMealCardAddToCartButton");

        const popupCreateMealsPortionFirstDiv = document.getElementById("popupCreateMealsPortionFirstDiv");
        const popupCreateMealsPortionSecondDiv = document.getElementById("popupCreateMealsPortionSecondDiv");
        const popupCreateMealsPortionThirdDiv = document.getElementById("popupCreateMealsPortionThirdDiv");
        const popupCreateMealsPortionFourthDiv = document.getElementById("popupCreateMealsPortionFourthDiv");
        const popupCreateMealsPortionFifthDiv = document.getElementById("popupCreateMealsPortionFifthDiv");

        const popupCreateMealsPortion1Cal = document.getElementById("popupCreateMealsPortion1Cal");
        const popupCreateMealsPortion2Cal = document.getElementById("popupCreateMealsPortion2Cal");
        const popupCreateMealsPortion3Cal = document.getElementById("popupCreateMealsPortion3Cal");
        const popupCreateMealsPortion4Cal = document.getElementById("popupCreateMealsPortion4Cal");
        const popupCreateMealsPortion5Cal = document.getElementById("popupCreateMealsPortion5Cal");

        const popupCreateMealsPortion1Price = document.getElementById("popupCreateMealsPortion1Price");
        const popupCreateMealsPortion2Price = document.getElementById("popupCreateMealsPortion2Price");
        const popupCreateMealsPortion3Price = document.getElementById("popupCreateMealsPortion3Price");
        const popupCreateMealsPortion4Price = document.getElementById("popupCreateMealsPortion4Price");
        const popupCreateMealsPortion5Price = document.getElementById("popupCreateMealsPortion5Price");

        const popupCreateMealsAddPortion = document.getElementById("popupCreateMealsAddPortion");
        const popupCreateMealsSave = document.getElementById("popupCreateMealsSave");
        const popupCreateMealsCancel = document.getElementById("popupCreateMealsCancel");
        const popupCreateMealsAddtocart = document.getElementById("popupCreateMealsAddtocart");

        const popupCreateMealsFirstPortionRemoveButton = document.getElementById("popupCreateMealsFirstPortionRemoveButton");
        const popupCreateMealsSecondPortionRemoveButton = document.getElementById("popupCreateMealsSecondPortionRemoveButton");
        const popupCreateMealsThirdPortionRemoveButton = document.getElementById("popupCreateMealsThirdPortionRemoveButton");
        const popupCreateMealsFourthPortionRemoveButton = document.getElementById("popupCreateMealsFourthPortionRemoveButton");
        const popupCreateMealsFifthPortionRemoveButton = document.getElementById("popupCreateMealsFifthPortionRemoveButton");

        const popupCreateMealNameInput = document.getElementById("popupCreateMealNameInput");
        const popupCreateMealDiscriptionInput = document.getElementById("popupCreateMealDiscriptionInput");

/////////////////////////////////////// variables ///////////////////////////////////


        popupCreateMealsPortionFirstDiv.style.display = "none";
        popupCreateMealsPortionSecondDiv.style.display = "none";
        popupCreateMealsPortionThirdDiv.style.display = "none";
        popupCreateMealsPortionFourthDiv.style.display = "none";
        popupCreateMealsPortionFifthDiv.style.display = "none";

        popupCreateMealsPortion1Cal.style.display = "none";
        popupCreateMealsPortion2Cal.style.display = "none";
        popupCreateMealsPortion3Cal.style.display = "none";
        popupCreateMealsPortion4Cal.style.display = "none";
        popupCreateMealsPortion5Cal.style.display = "none";

        popupCreateMealsPortion1Price.style.display = "none";
        popupCreateMealsPortion2Price.style.display = "none";
        popupCreateMealsPortion3Price.style.display = "none";
        popupCreateMealsPortion4Price.style.display = "none";
        popupCreateMealsPortion5Price.style.display = "none";

        mealsPopupContainer.style.display = "none";

        const createMealCards = document.querySelectorAll(".createMealCard");

        createMealCards.forEach(function (card) {
            card.addEventListener("click", (event) => {
                mealsPopupContainer.style.display = "flex";

                alert(event.target.dataset.mealName);

                popupCreateMealNameInput.placeholder = event.target.dataset.mealName?.toString() || '';
                popupCreateMealDiscriptionInput.placeholder = event.target.dataset.mealDiscription?.toString() || '';
                popUpfirstPortionList.options[0].innerHTML = "Selected - " + (event.target.dataset.firstPortion || '');
                popUpfirstPortionSize.options[0].innerHTML = "Selected - " + parseInt(event.target.dataset.firstPortionSize);
                popUpsecondPortionList.options[0].innerHTML = "Selected - " + (event.target.dataset.secondPortion || '');
                popUpsecondPortionSize.options[0].innerHTML = "Selected - " + parseInt(event.target.dataset.secondPortionSize);
                popUpthirdPortionList.options[0].innerHTML = "Selected - " + (event.target.dataset.thirdPortion || '');
                popUpthirdPortionSize.options[0].innerHTML = "Selected - " + parseInt(event.target.dataset.thirdPortionSize);
                popUpfourthPortionList.options[0].innerHTML = "Selected - " + (event.target.dataset.fourthPortion || '');
                popUpfourthPortionSize.options[0].innerHTML = "Selected - " + parseInt(event.target.dataset.fourthPortionSize);
                popUpfifthPortionList.options[0].innerHTML = "Selected - " + (event.target.dataset.fifthPortion || '');
                popUpfifthPortionSize.options[0].innerHTML = "Selected - " + parseInt(event.target.dataset.fifthPortionSize);
            });
        });


        popupCreateMealsCancel.addEventListener("click", () => {
            mealsPopupContainer.style.display = "none";
        });

        popupCreateMealsAddPortion.addEventListener("click", () => {
            if (popupCreateMealsPortionFirstDiv.style.display === "none") {
                popupCreateMealsPortionFirstDiv.style.display = "flex";
                popupCreateMealsPortion1Cal.style.display = "block";
                popupCreateMealsPortion1Price.style.display = "block";
                popupCreateMealsFirstPortionRemoveButton.style.display = "block";
            } else if (popupCreateMealsPortionSecondDiv.style.display === "none") {
                popupCreateMealsPortionSecondDiv.style.display = "flex";
                popupCreateMealsPortion2Cal.style.display = "block";
                popupCreateMealsPortion2Price.style.display = "block";
                popupCreateMealsSecondPortionRemoveButton.style.display = "block";
            } else if (popupCreateMealsPortionThirdDiv.style.display === "none") {
                popupCreateMealsPortionThirdDiv.style.display = "flex";
                popupCreateMealsPortion3Cal.style.display = "block";
                popupCreateMealsPortion3Price.style.display = "block";
                popupCreateMealsThirdPortionRemoveButton.style.display = "block";
            } else if (popupCreateMealsPortionFourthDiv.style.display === "none") {
                popupCreateMealsPortionFourthDiv.style.display = "flex";
                popupCreateMealsPortion4Cal.style.display = "block";
                popupCreateMealsPortion4Price.style.display = "block";
                popupCreateMealsFourthPortionRemoveButton.style.display = "block";
            } else if (popupCreateMealsPortionFifthDiv.style.display === "none") {
                popupCreateMealsPortionFifthDiv.style.display = "flex";
                popupCreateMealsPortion5Cal.style.display = "block";
                popupCreateMealsPortion5Price.style.display = "block";
                popupCreateMealsFifthPortionRemoveButton.style.display = "block";
            }
        });

        popupCreateMealsFirstPortionRemoveButton.addEventListener("click", () => {
            popupCreateMealsPortionFirstDiv.style.display = "none";
            popupCreateMealsPortion1Cal.style.display = "none";
            popupCreateMealsPortion1Price.style.display = "none";
            popupCreateMealsFirstPortionRemoveButton.style.display = "none";

            firstPortionList.selectedIndex = -1;
            firstPortionSize.selectedIndex = -1;
        });

        popupCreateMealsSecondPortionRemoveButton.addEventListener("click", () => {
            popupCreateMealsPortionSecondDiv.style.display = "none";
            popupCreateMealsPortion2Cal.style.display = "none";
            popupCreateMealsPortion2Price.style.display = "none";
            popupCreateMealsSecondPortionRemoveButton.style.display = "none";

            secondPortionList.selectedIndex = -1;
            secondPortionSize.selectedIndex = -1;
        });

        popupCreateMealsThirdPortionRemoveButton.addEventListener("click", () => {
            popupCreateMealsPortionThirdDiv.style.display = "none";
            popupCreateMealsPortion3Cal.style.display = "none";
            popupCreateMealsPortion3Price.style.display = "none";
            popupCreateMealsThirdPortionRemoveButton.style.display = "none";

            thirdPortionList.selectedIndex = -1;
            thirdPortionSize.selectedIndex = -1;
        });

        popupCreateMealsFourthPortionRemoveButton.addEventListener("click", () => {
            popupCreateMealsPortionFourthDiv.style.display = "none";
            popupCreateMealsPortion4Cal.style.display = "none";
            popupCreateMealsPortion4Price.style.display = "none";
            popupCreateMealsFourthPortionRemoveButton.style.display = "none";

            fourthPortionList.selectedIndex = -1;
            fourthPortionSize.selectedIndex = -1;
        });

        popupCreateMealsFifthPortionRemoveButton.addEventListener("click", () => {
            popupCreateMealsPortionFifthDiv.style.display = "none";
            popupCreateMealsPortion5Cal.style.display = "none";
            popupCreateMealsPortion5Price.style.display = "none";
            popupCreateMealsFifthPortionRemoveButton.style.display = "none";

            fifthPortionList.selectedIndex = -1;
            fifthPortionSize.selectedIndex = -1;
        });


///////////////////////////////////////////     Request Submission //////////////////////////////////////////

        createMealsSave.addEventListener("click", createMeal);

        function createMeal() {
            const xmlReq = new XMLHttpRequest();

            if (createMealNameInput.value === "") {
                alert("Please Fill Meal Name");
            } else if (firstPortionList.value === -1 && firstPortionSize.value === -1) {
                alert("Please Fill FirstPortion");
            } else {
                submitValue = JSON.stringify({
                    mealName: createMealNameInput.value,
                    mealDiscription: createMealDiscriptionInput.value,
                    firstPortion: firstPortionList.value,
                    firstPortionSize: firstPortionSize.value,
                    secondPortion: secondPortionList.value,
                    secondPortionSize: secondPortionSize.value,
                    thirdPortion: thirdPortionList.value,
                    thirdPortionSize: thirdPortionSize.value,
                    fourthPortion: fourthPortionList.value,
                    fourthPortionSize: fourthPortionSize.value,
                    fifthPortion: fifthPortionList.value,
                    fifthPortionSize: fifthPortionSize.value
                });
            }

            xmlReq.onreadystatechange = function () {
                if (xmlReq.readyState === XMLHttpRequest.DONE) {
                    if (xmlReq.status === 200) {
                        const mes = xmlReq.responseText;
                    } else if (xmlReq.status === 400) {
                        console.log("Request Failed");
                    }
                }
            };

            xmlReq.open("POST", "/DEA-DietMe/createMealController?userId=<%= userId%>", true);
            xmlReq.setRequestHeader("Content-Type", "application/json");
            xmlReq.send(submitValue);
        }
    };
</script>