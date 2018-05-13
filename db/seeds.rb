# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


FactoryBot.create_list(:category, 20)
category = Category.first
FactoryBot.create_list(:comment, 5)

FactoryBot.create_list(:post, 20, category_id: category.id)

  