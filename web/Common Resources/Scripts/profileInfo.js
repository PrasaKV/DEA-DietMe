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
const changePasswordSubmit = document.getElementById("changePasswordSubmit");
const currentPassword = document.getElementById("currentPassword");
const newPassword = document.getElementById("newPassword");
const confirmPassword = document.getElementById("confirmPassword");
const changePasswordSave = document.getElementById("changePasswordSave");

passwordChangeButton.addEventListener("click", () => {
    changePasswordShowDiv.style.display = "initial";
});

changePasswordSubmit.addEventListener("click", () => {
    newPassword.style.pointerEvents = "initial";
    confirmPassword.style.pointerEvents = "initial";
    changePasswordSave.style.pointerEvents = "initial";
});

changePasswordSave.addEventListener("click", () => {
    if (newPassword.value === confirmPassword.value) {
        changePasswordShowDiv.style.display = "none";
        newPassword.style.pointerEvents = "none";
        confirmPassword.style.pointerEvents = "none";
        changePasswordSave.style.pointerEvents = "none";
        alert("Password changed successfully");
    } else {
        confirmPassword.style.borderBottom = "2px solid red";
        alert("Passwords do not match");
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
    buttonBehavior(profileAddressInputs, addressEditButton, addressSaveButton, true);
});

addressSaveButton.addEventListener("click", () => {
    buttonBehavior(profileAddressInputs, addressEditButton, addressSaveButton, false);
});

function buttonBehavior(input, edit, save, flagEdit = true) {
    if (flagEdit) {
        if (input.length) {
            input.forEach(item => {
                item.style.pointerEvents = "initial";
            });
        }
//            input.style.pointerEvents = "initial";
            edit.style.display = "none";
            save.style.display="initial";
            
        }
        if(!(flagEdit))
        {
            if (input.length) {
            input.forEach(item => {
                item.style.pointerEvents = "none";
            });
       }
//            input.style.pointerEvents = "none";
            edit.style.display = "initial";
            save.style.display="none";
}
}