# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Users
9.times do
    User.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        password: Faker::Internet.password
    )
end

user_1 = User.all[0]
user_2 = User.all[1]
user_3 = User.all[2]
user_4 = User.all[3]
user_5 = User.all[4]
user_6 = User.all[5]
user_7 = User.all[6]
user_8 = User.all[7]
user_9 = User.all[8]

puts "#{User.all.count} users created"

#Books
3.times do
    Book.create!(
        title: Faker::Book.title,
        author: Faker::Book.author,
        available: true
        genre: Faker::Book.genre,
        user_id: user_1.id
    )
end

1.times do
    Book.create!(
        title: Faker::Book.title,
        author: Faker::Book.author,
        available: false
        genre: Faker::Book.genre,
        user_id: user_1.id
    )
end

2.times do
    Book.create!(
        title: Faker::Book.title,
        author: Faker::Book.author,
        available: false
        genre: Faker::Book.genre,
        user_id: user_2.id
    )
end

2.times do
    Book.create!(
        title: Faker::Book.title,
        author: Faker::Book.author,
        available: true
        genre: Faker::Book.genre,
        user_id: user_3.id
    )
end

1.times do
    Book.create!(
        title: Faker::Book.title,
        author: Faker::Book.author,
        available: false
        genre: Faker::Book.genre,
        user_id: user_4.id
    )
end

2.times do
    Book.create!(
        title: Faker::Book.title,
        author: Faker::Book.author,
        available: true
        genre: Faker::Book.genre,
        user_id: user_5.id
    )
end

2.times do
    Book.create!(
        title: Faker::Book.title,
        author: Faker::Book.author,
        available: false
        genre: Faker::Book.genre,
        user_id: user_6.id
    )
end

1.times do
    Book.create!(
        title: Faker::Book.title,
        author: Faker::Book.author,
        available: true
        genre: Faker::Book.genre,
        user_id: user_6.id
    )
end

5.times do
    Book.create!(
        title: Faker::Book.title,
        author: Faker::Book.author,
        available: true
        genre: Faker::Book.genre,
        user_id: user_7.id
    )
end

1.times do
    Book.create!(
        title: Faker::Book.title,
        author: Faker::Book.author,
        available: true
        genre: Faker::Book.genre,
        user_id: user_8.id
    )
end

book_1 = Book.all[0]
book_2 = Book.all[1]
book_3 = Book.all[2]
book_4 = Book.all[3]
book_5 = Book.all[4]
book_6 = Book.all[5]
book_7 = Book.all[6]
book_8 = Book.all[7]
book_9 = Book.all[8]
book_10 = Book.all[9]
book_11 = Book.all[10]
book_12 = Book.all[11]
book_13 = Book.all[12]
book_14 = Book.all[13]
book_15 = Book.all[14]
book_16 = Book.all[15]
book_17 = Book.all[16]
book_18 = Book.all[17]
book_19 = Book.all[18]
book_20 = Book.all[19]

puts "#{Book.all.count} books created"