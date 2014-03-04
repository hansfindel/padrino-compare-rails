# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Post.find_or_create_by({title: "title", body: "post"})

(2..10000).each do |i|
	p = Post.find_by({title: "Title#{i}", body: "Post#{i}"})	
	if !p
		p = Post.new({title: "Title#{i}", body: "Post#{i}"})
		p.save
	end
	puts "i = #{i}" if i%250==0
end