document.addEventListener("DOMContentLoaded", function () {
    
    
    // Defined Variables

    const personalInfo = document.getElementById("personalInfo");
    const customMeals = document.getElementById("customMeals");
    const cart = document.getElementById("cart");
    const favourites = document.getElementById("favourites");
    const notifications = document.getElementById("notifications");
    const purchaseHistory = document.getElementById("purchaseHistory");
    const pendingDeliveries = document.getElementById("pendingDeliveries");
    const profileImage = document.getElementById("profileImage");
    const profileImageForm = document.getElementById("profileImageForm");

    const addImageInput = document.getElementById("addImageInput");
    const profileImageSubmit = document.getElementById("profileImageSubmit");

    const profileDivRight = document.querySelector(".profileDivRight");

    const profileImageDiv = document.querySelector(".profileImageDiv");
    const addImage = document.querySelector(".addImage");
    const profileTabs = document.querySelectorAll(".profileTabs");

    // Functions
    
    
    
    
    profileImageDiv.addEventListener("mouseover", () => {
        addImageInputCover.style.display = "initial";
    });
    profileImageDiv.addEventListener("mouseout", () => {
        addImageInputCover.style.display = "none";
    });
    
    addImageInputCover.addEventListener("click",()=>{
        addImageInput.click();
    });
    
    profileImageForm.addEventListener("submit", (event) => {
        event.preventDefault();
        
    });
    
    addImageInput.addEventListener("change", () => {    
    profileImageForm.submit();
    

       setTimeout( ()=> {
        
        window.location.reload(true);
        
    },100);

    });




    profileTabs.forEach((profileTab) => {
        profileTab.addEventListener("click", () => {
            profileTabs.forEach((profileTab) => {
                profileTab.style.borderLeft = "none";
            });
            profileTab.style.borderLeft = "3px solid #01ca5e";
        });
    });
    
    
});
