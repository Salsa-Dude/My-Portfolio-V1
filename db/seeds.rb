
3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end


10.times do |blog| 
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    topic_id: Topic.last.id


  )
end

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

# 8.times do |portfolio_item| 
#   Portfolio.create!(
#     title: "Portfolio title #{portfolio_item}",
#     subtitle: "Ruby on Rails",
#     body: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.",
#     main_image: "http://placehold.it/600x400",
#     thumb_image: "http://placehold.it/350x200"
#   )
# end

# 1.times do |portfolio_item| 
#   Portfolio.create!(
#     title: "Portfolio title #{portfolio_item}",
#     subtitle: "Angular",
#     body: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.",
#     main_image: "http://placehold.it/600x400",
#     thumb_image: "http://placehold.it/350x200"
#   )
# end

# 3.times do |technology|
#   Portfolio.last.technologies.create!(
#     name: "Technology #{technology}"
#   )
# end