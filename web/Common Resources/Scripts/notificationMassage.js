/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/* 
    Created on : Apr 18, 2024, 12:08:56 AM
    Author     : Nimeshi
*/



document.addEventListener('DOMContentLoaded', function() {
  var markAsReadButtons = document.querySelectorAll('.mark-as-read-btnn');
  var markAllAsReadButton = document.querySelector('.mark-all-as-read');

  markAsReadButtons.forEach(function(button) {
    button.addEventListener('click', function() {
      var notificationDiv = this.closest('.notificationss');
      if (notificationDiv) {
        notificationDiv.style.display = 'none';
        checkAllRead(); 
      }
    });
  });

  function checkAllRead() {
    var allNotifications = document.querySelectorAll('.notificationss');
    var allRead = true;
    allNotifications.forEach(function(notification) {
      if (notification.style.display !== 'none') {
        allRead = false;
      }
    });
    if (allRead) {
      markAllAsReadButton.style.display = 'none'; 
    }
  }
});
