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
    var markAsReadButton = document.querySelector('.mark-as-read');
    var markAllAsReadButton = document.querySelector('.mark-all-as-read'); // Assuming this is your "mark all as read" button
    var notificationConDiv = document.querySelector('.notification-container');
  
    markAsReadButton.addEventListener('click', function() {
        notificationConDiv.style.display = 'none';
        markAllAsReadButton.style.display = 'none'; // Hide the "mark all as read" button
    });
});