# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# model User 
#   email 
#   user_name 
#   password_digest 
#   skill_level
#   admin:boolean
# model Course 
#   name:string 
#   address:string 
#   hole_count:integer 
#   course_par:integer 
#   rating:integer
#   image:string
# model Card 
#   name:string 
#   month:string 
#   day:integer 
#   time:string 
#   privacy:boolean 
#   course_id:integer 
#   user_id:integer
# model Player 
#   user_id:integer 
#   card_id:integer

   
Coourse.create!([
  {name: "West Fork Disc Golf Course", address: "9095 S Broadway, Highlands Ranch, CO 80129", hole_count: 18 , course_par: 55, rating: 4.1, image: "https://www.highlandsranch.org/home/showpublishedimage/722/637331663297470000"},
  {name: "Fehringer Ranch Disc Golf Course", address: "W. Quincy Ave. and, S Simms St, Morrison, CO 80465", hole_count: 18, course_par: 57, rating: 4.2, image: "https://d22ksth68ujgu2.cloudfront.net/6828e97d1360296c97ef9cd2b83c6c21_m_IMG_7550.jpg"},
  {name: "Bird's Nest Disc Park", address: "17975 64th Parkway, Arvada, CO 80007", hole_count: 18, course_par: 54, rating: 4.1, image: "https://d22ksth68ujgu2.cloudfront.net/f68c35ac3d9718e9fb59134632e05114_m_IMG_9695.jpg"},
  {name: "Adams Hollow Disc Golf Course", address: "Regional Park, Henderson Rd, Brighton, CO 80601", hole_count: 18, course_par: 54, rating: 4.1, image: "https://d22ksth68ujgu2.cloudfront.net/3c484aea1403906d650c14104501cc9f_m_km0zAjqesRy5yqFU1bCsIQyaFE0n.jpg"},
  {name: "Wondervu Disc Golf Course", address: "136 Camp Eden Rd, Golden, CO 80403", hole_count: 22, course_par: 68, rating: 4.6, image: "https://d22ksth68ujgu2.cloudfront.net/f5a7839559f22371fc8aa81b9638f985_m_IMG_0673.jpg"},
  {name: "Beaver Ranch Disc Golf Course", address: "11369 S Foxton Rd, Conifer, CO 80433", hole_count: 21, course_par: 63, rating: 4.8, image: "https://d22ksth68ujgu2.cloudfront.net/fc8cf208ea760b6c039aa58a26934b21_m_IMG_7163.jpg"},
  {name: "Golden Eagle Disc Golf Course", address: "US Hwy Forest Service Rd 100, Bellvue, CO 80512", hole_count: 18, course_par: 54, rating: 4.6, image: "https://d22ksth68ujgu2.cloudfront.net/3223ff8f2aa0778036f30e604d38cd5a_m_5XxFR7M7YHQpeeKaPXXAKEp749yx.jpg"},
  {name: "Sundance Trail Ranch", address: "17931 W County Rd 74e, Red Feather Lakes, CO 80545", hole_count: 21, course_par: 65, rating: 4.5, image: "https://d22ksth68ujgu2.cloudfront.net/cba50ef2e04fff6ce4b6d125052b6ea4_m_HarEKPivlkRXnxw1X4nswJiVyBNu.jpg"},
  {name: "Widefield Park", address: "Fountain Valley, Security-Widefield, CO 80911", hole_count: 18, course_par: 57, rating: 4.2, image: "https://d22ksth68ujgu2.cloudfront.net/d3324f3c703140e948c1c8ae7f83e584_m_51C64BB3_884A_41F1_8F51_9D9F39DFFE93.jpg"},
  {name: "Colorado Mountain College - Leadville", address: "Co Rd 41, Leadville, CO 80461", hole_count: 18, course_par: 54, rating: 4.4, image: "https://d22ksth68ujgu2.cloudfront.net/d904e24a448e3acb5906d469cfaa9ee6_m_IMG_1925.jpg"}
])