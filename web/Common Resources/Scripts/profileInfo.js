document.addEventListener("DOMContentLoaded", function () {

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
    const currentPassword = document.getElementById("currentPassword");
    const newPassword = document.getElementById("newPassword");
    const confirmPassword = document.getElementById("confirmPassword");
    const currentPasswordInput = document.getElementById("currentPasswordInput");
    const newPasswordInput = document.getElementById("newPasswordInput");
    const confirmPasswordInput = document.getElementById("confirmPasswordInput");
    const changePasswordSave = document.getElementById("changePasswordSave");

    passwordChangeButton.addEventListener("click", () => {
        const display = getComputedStyle(changePasswordShowDiv).display;
        if (display === "none") {
            changePasswordShowDiv.style.display = "initial";
        } else {
            changePasswordShowDiv.style.display = "none";
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
        addressButtonBehavior(profileAddressInputs, addressEditButton, addressSaveButton, true);
    });

    addressSaveButton.addEventListener("click", () => {
        addressButtonBehavior(profileAddressInputs, addressEditButton, addressSaveButton, false);
    });

    function buttonBehavior(input, edit, save, flagEdit = true) {
        if (flagEdit) {
            if (input.length) {
                input.forEach(item => {
                    item.style.pointerEvents = "initial";
                });
            } else {
                input.style.pointerEvents = "initial";
            }
            edit.style.display = "none";
            save.style.display = "initial";
        } else {
            if (input.length) {
                input.forEach(item => {
                    item.style.pointerEvents = "none";
                });
            } else {
                input.style.pointerEvents = "none";
            }
            edit.style.display = "initial";
            save.style.display = "none";
        }
    }

    function addressButtonBehavior(input, edit, save, flagEdit = true) {
        if (flagEdit) {
            if (input.length) {
                input.forEach(item => {
                    item.style.pointerEvents = "initial";
                });
            }
            edit.style.display = "none";
            save.style.display = "initial";
        } else {
            if (input.length) {
                input.forEach(item => {
                    item.style.pointerEvents = "none";
                });
            }
            edit.style.display = "initial";
            save.style.display = "none";
        }
    }
});
