var imageIndex = 1;

function changeImage() {
    var imgElement = document.getElementById("favHeart");
    if (imageIndex === 1) {
        imgElement.src = "Common Resources/Assets/heart 1.png";
        imageIndex = 2;
    } 
    else {
        imgElement.src = "Common Resources/Assets/heart 0.png";
        imageIndex = 1;
    }
}

function showButton() {
    var button = document.getElementById("orderButton");
    button.style.display = "block";
}

function hideButton() {
    var button = document.getElementById("orderButton");
    button.style.display = "none";
}