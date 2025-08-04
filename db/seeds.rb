3.times do |x|
  Topic.create!(
    title: "Topic : #{x+1}",
  )
end
puts "3 Topic is created"

10.times do |x|
  Blog.create!(
    title: "My Blog Post #{x+1}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
       Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut 
      aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
      Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    topic_id: Topic.last.id
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

8.times do |x|
  Portfolio.create!(
   title: "Portfolio-Title: #{x+1}",
   subtitle: "Ruby on Rails",
   body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
       Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut 
      aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ",
   main_image:"https://placeholdit.com/600x400/dddddd/999999",
   thumb_image:"https://placeholdit.com/350x200/dddddd/999999" 
  )
end
puts "8 Portfolios Created "

1.times do |x|
  Portfolio.create!(
   title: "Portfolio-Title: #{x+1}",
   subtitle: "Angular",
   body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
       Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut 
      aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ",
   main_image:"https://placeholdit.com/600x400/dddddd/999999",
   thumb_image:"https://placeholdit.com/350x200/dddddd/999999" 
  )
end
puts "1 Portfolios Created"


3.times do |x|
    Technology.create!(
      name: "Technology :#{x+1}",
      portfolio_id: Portfolio.last.id
      )
end
puts "3 technologies Created"

# ANOTHER WAYS OF ADDING VALUES IN ASSOCIATION MDOELS
#Define a parent obj or choose it 
# p= Portfolio.last
# than create a child object directly associated with it
# p.technologies.create!(name"Random.name") here we don't have to explicitly pass the parent id as well already mention it in advance


# At end use rails db:setup to delete previous data , create new object , load schema and run seed data 
# i.e runs -> rails db:create , rails db:schema:load, rails db:seed