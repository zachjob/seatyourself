# SeatYourself

SeatYourself is a modern web-application for finding available seats at local restaurants in Toronto.

Created by Abbey Christens, Josh Dales, and Zach Job. ❤️

## Need to have
* <del>As a visitor, when I go to the homepage, I am presented with a list of restaurants.</del>
* <del>As a visitor, I do not have the option of making a reservation. (Needs an Account)</del>
* <del>As a visitor, I want to sign up for a customer account so that I can make reservations online.</del>
* <del>As a user I can login and logout.</del>
* <del>As a customer, when I go to a restaurant's page, I can make a reservation for the time and party size of my choice.</del>
* <del>As a customer, if I try to make a reservation outside of a restaurant's opening hours, the reservation will not be made and I will be shown a message indicating why.</del>
* <del>As a customer, if I try to make a reservation at a time when a restaurant is already at max capacity, the reservation will not be made and I will be shown a message indicating why.</del>
* <del>As a customer, if I try to make a reservation for a date in the past, the reservation will not be made and I will be shown a message indicating why.</del>
* <del>As a restaurant owner, when I go to my restaurant's edit page, I can set the opening and closing times of my restaurant.</del>
* <del>As a restaurant owner, when I go to my restaurant's edit page, I can set the maximum capacity of my restaurant.</del>


## Nice to have
* As a visitor, when I click on a restaurant, I am presented with:
  * <del>address</del>
  * <del>neighbourhood</del
  * <del>price range</del>
  * <del>summary</del>
  * <del>menu</del>
  * a list of available time slots
* <del>As a customer I can go to a page to see a list of the reservations I’ve booked.</del>
* <del>As a customer, when I make a reservation, I want to be shown a confirmation message with the details of my reservation.</del>
* <del>As a restaurant owner, when I go to my profile, I want to see a list of upcoming reservations for the next week.</del>
* <del>As a restaurant owner, when I go to my restaurant's edit page, I can set the minimum and maximum party size that a reservation can be made for.</del>

## Happy to have
* <del>As a customer, when I make a reservation at a restaurant, I want to receive loyalty points.</del>
* <del>As a customer, when I go to my profile, I want to see my loyalty points.</del>
* <del>As a restaurant owner, when I go to my profile, I want to see a list of customers who have made reservations at my restaurant in order of loyalty points.</del>
* Replace booking-times with ONLY AVAILABLE time slots.


## Keywords
* User
  - Name
  - Phone Number
  - Email address
  - User type (customer, owner)

* Restaurant
  - Name
  - open_time
  - close_time
  - seats
  - address
  - user_id(owner)
  - menu

* Reservation
  - user_id(customer)
  - restaurant_id
  - date
  - time
  - party_size
