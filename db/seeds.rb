# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Stock.create([
    {name: 'Tesla', price: 607.80, category: 'clean energy'},
    {name: 'Amazon', price: 1230.90, category: 'retail'},
])

stock_a = Stock.create({name: 'Blockbuster', price: 500, category: 'entertainment'})

stock_a.comments.create({comment: "To the moon", commentor: "John"})