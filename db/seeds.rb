# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
restaurants = Restaurant.create! [
  { name: "Los Colibris",
    open_time: "2000-01-01 17:00:00 UTC",
    close_time: "2000-01-01 22:00:00 UTC",
    seats: 25,
    address: " 220 King St W, Toronto, ON M5H 1K4",
    user_id: 1,
    price_range: 4,
    neighbourhood: "Entertainment District",
    summary: "A sprawling, upscale Mexican spot with chic decor set upstairs from sister cantina El Caballito.",
    menu: "http://www.loscolibris.ca/wp-content/uploads/Wine-List-Sept-2015.pdf",
    min_seating: 2,
    max_seating: 6},
  { name: "Over Easy",
    open_time: "2000-01-01 07:00:00 UTC",
    close_time: "2000-01-01 15:00:00 UTC",
    seats: 100,
    address: "56 Yonge St, Toronto, ON M5E 1G5",
    user_id: 1,
    price_range: 2,
    neighbourhood: "Old Toronto",
    summary: "Classic breakfasts (with a renowned eggs Benedict) & lunch in a comfy, bright hotel location.",
    menu: "http://www.overeasyrestaurants.com/?page_id=20",
    min_seating: 1,
    max_seating: 8},
  { name: "Smoke Signals Barbecue",
    open_time: "2000-01-01 12:00:00 UTC",
    close_time: "2000-01-01 23:00:00 UTC",
    seats: 100,
    address: "1242 Dundas St W, Toronto, ON M6J 1X5",
    user_id: 1,
    price_range: 3,
    neighbourhood: "Trinity Bellwoods",
    summary: "Inspired by Southern BBQ, this simple spot serves up wood-smoked ribs, chicken & brisket plus sides.",
    menu: "https://www.smokesignalsbarbecue.ca/menu/",
    min_seating: 4,
    max_seating: 12},
  { name: "Byblos",
    open_time: "2000-01-01 16:00:00 UTC",
    close_time: "2000-01-01 21:00:00 UTC",
    seats: 40,
    address: "11 Duncan St, Toronto, ON M5V 3M2",
    user_id: 1,
    price_range: 5,
    neighbourhood: "Entertainment District",
    summary: "Luxe, 2-story restaurant putting a contemporary spin on Eastern Mediterranean cuisine & cocktails.",
    menu: "http://byblostoronto.com/#menu",
    min_seating: 2,
    max_seating: 6}
  ]


  users = [
    { name: "dave",
      password: "1234",
      password_confirmation: "1234",
      phone: 4165551234,
      email: "dave@gmail.com"},
    { name: "jessica",
      password: "1234",
      password_confirmation: "1234",
      phone: 4165551234,
      email: "jessica@gmail.com"},
    { name: "max",
      password: "1234",
      password_confirmation: "1234",
      phone: 4165551234,
      email: "max@gmail.com"},
    { name: "sarah", password: "1234",
      password_confirmation: "1234",
      phone: 4165551234,
      email: "sarah@gmail.com"},
  ]

  users.each do |user|
    User.create(user)
  end
