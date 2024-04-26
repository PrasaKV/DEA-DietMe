const burgerMenu = document.querySelector(".burgerMenu");
            const menuDiv = document.querySelector(".menuDiv");
            let flag = false;

            burgerMenu.addEventListener("click", () => {
                if (!flag) {
                    flag = true;
                    menuDiv.style.display = "flex";
                    menuDiv.style.height = "140px";
                    burgerMenu.classList.add("burgerMenuClicked");
                } else if (flag) {
                    flag = false;
                    menuDiv.style.display = "none";
                    menuDiv.style.height = "0px";
                    burgerMenu.classList.remove("burgerMenuClicked");
                }
});
