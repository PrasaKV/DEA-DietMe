
    // <====================================== Defined Variables ======================================>

const personalInfo = document.getElementById("personalInfo");
const customMeals = document.getElementById("customMeals");
const cart = document.getElementById("cart");
const favourites = document.getElementById("favourites");
const notifications = document.getElementById("notifications");
const purchaseHistory = document.getElementById("purchaseHistory");
const pendingDeliveries = document.getElementById("pendingDeliveries");

const profileDivRight = document.querySelector(".profileDivRight");

const profileImageDiv = document.querySelector(".profileImageDiv");
const addImage = document.querySelector(".addImage");
const profileTabs = document.querySelectorAll(".profileTabs");


// <====================================== Functions Calling ======================================>


profileImageDiv.addEventListener("mouseover", () => {
				addImage.style.display = "initial"; });
            
          profileImageDiv.addEventListener("mouseout", () => {
						addImage.style.display = "none"; });
			
            profileTabs.forEach((profileTab) => {
                
            profileTab.addEventListener("click", () => {
                
            profileTabs.forEach((profileTab) => {
            profileTab.style.borderLeft = "none";
            });
            
            profileTab.style.borderLeft = "3px solid #01ca5e";
					});
				});




