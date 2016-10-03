# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = []
15.times {
          categories << Category.create!(title: Faker::Commerce.department
          )
}

30.times {
          Article.create!(title: Faker::Hacker.say_something_smart,
                           description: Faker::Hipster.paragraph,
                           token: SecureRandom.base64(12),
                           category: categories.sample
          )
}
