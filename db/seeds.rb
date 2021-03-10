# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_classification = UserClassification.create!(user_classification_name: "打ち切り漫画家")

User.create!(first_name: "漫", last_name: "画太郎", zipcode: "123-6789",
             prefecture: "珍遊県", municipality: "珍遊記市", address: "漫画2-3-1", apartments: "太郎とゆかいなアパート306号室",
             email: "mangatarou@example.com", phone_number: "080-0134-5678", password: "password", user_classification_id: user_classification.id)
User.create!(first_name: "島袋", last_name: "光年", zipcode: "582-9740",
              prefecture: "世紀末県", municipality: "リーダー市", address: "ジャンプ7-5", apartments: "たけしマンション704号室",
              email: "shimabukuro@example.com", phone_number: "080-4820-5881", company_name: "週刊少年ジャンプ", password: "password", user_classification_id: user_classification.id)
