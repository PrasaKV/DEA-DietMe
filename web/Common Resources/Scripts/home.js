< script src = "https://unpkg.com/sweetalert/dist/sweetalert.min.js" > < /script>

        const burgerMenu = document.querySelector(".burgerMenu");
        const menuDiv = document.querySelector(".menuDiv");
        let flag = false;
        burgerMenu.addEventListener("click", () = > {
        if (!flag) {
        flag = true;
                menuDiv.style.display = "flex";
                menuDiv.style.height = "140px";
                burgerMenu.classList.add("burgerMenuClicked");
        } else {
        flag = false;
                menuDiv.style.display = "none";
                menuDiv.style.height = "0px";
                burgerMenu.classList.remove("burgerMenuClicked");
        }
        });
        function checkUserLogin() {
        // Check if the user is logged in by verifying userId existence
        var userId = '<%= session.getAttribute("userId") %>';
                if (userId !== null) {
        // User is logged in, allow form submission
        return true;
        } else {
        // User is not logged in, display message and redirect to login servlet
        swal({
        title: "Login Required",
                text: "You need to login to send a message.",
                icon: "warning",
                buttons: true,
        }).then(function() {
        // Redirect to login servlet
        window.location.href = "loginServletUrl";
        });
                // Prevent form submission
                return false;
        }
        }
