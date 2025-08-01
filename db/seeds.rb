10.times do |x|
  Blog.create!(
    title: "My Blog Post #{x+1}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
       Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut 
      aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
      Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  )
end
# Adding Flags for verification
puts "10 Blogs post created"
5.times do |x|
  Skill.create!(
   title: "Rails Skills-Set #{x+1}",
   percent_utilized: "#{x*10+1}"
  )
end
puts "5 Skills  created"

9.times do |x|
  Portfolio.create!(
   title: "Portfolio title: #{x+1}",
   subtitle: "Portfolio sub-title: #{x+1}",
   body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
       Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut 
      aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ",
   main_image:"https://placeholdit.com/600x400/dddddd/999999",
   thumb_image:"https://placeholdit.com/350x200/dddddd/999999" 
  )
end
puts "9 Portfolios Created created"

# At end use rails db:setup to delete previous data , create new object , load schema and run seed data 
# i.e runs -> rails db:create , rails db:schema:load, rails db:seed