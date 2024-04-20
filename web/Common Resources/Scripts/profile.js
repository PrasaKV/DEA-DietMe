const profileImageDiv = document.querySelector(".profileImageDiv");
const addImage = document.querySelector(".addImage");
const profileTabs = document.querySelectorAll(".profileTabs");

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
