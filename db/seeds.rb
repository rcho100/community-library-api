# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Users
user_1 = User.create!(
    name: 'John',
    email: 'john@example.com',
    password: 'password'
)
user_2 = User.create!(
    name: 'Abby',
    email: 'abby@example.com',
    password: 'password1'
)
user_3 = User.create!(
    name: 'Dan',
    email: 'dan@example.com',
    password: 'password2'
)

#Books
book_1 = Book.create!(
    title: 'Animal Farm',
    author: 'George Orwell',
    available: true
)
book_2 = Book.create!(
    title: '1984',
    author: 'George Orwell',
    available: true
)
book_3 = Book.create!(
    title: 'Great Expectations',
    author: 'Charles Dickens',
    available: true
)
book_4 = Book.create!(
    title: 'The Great Gatsby',
    author: 'F. Scott Fitzgerald',
    available: true
)
book_5 = Book.create!(
    title: 'To Kill a Mockingbird',
    author: 'Harper Lee',
    available: true
)
book_6 = Book.create!(
    title: 'Fahrenheit 451',
    author: 'Ray Bradbury',
    available: true
)
book_7 = Book.create!(
    title: 'The Outsiders',
    author: 'S. E. Hinton',
    available: true
)
book_8 = Book.create!(
    title: 'Hamlet',
    author: 'William Shakespeare',
    available: true
)
book_9 = Book.create!(
    title: 'Romeo and Juliet',
    author: 'William Shakespeare',
    available: true
)
book_10 = Book.create!(
    title: 'Frankenstein',
    author: 'Mary Shelley',
    available: true
)
book_11 = Book.create!(
    title: 'Little Women',
    author: 'Louisa May Alcott',
    available: true
)
book_12 = Book.create!(
    title: 'The Grapes of Wrath',
    author: 'John Steinbeck',
    available: true
)
book_13 = Book.create!(
    title: 'The Old Man and the Sea',
    author: 'Ernest Hemingway',
    available: true
)
book_14 = Book.create!(
    title: 'Invisible Man',
    author: 'Ralph Ellison',
    available: true
)
book_15 = Book.create!(
    title: 'Death of a Salesman',
    author: 'Arthur Miller',
    available: true
)