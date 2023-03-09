# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user_1 = User.create(username: 'Admin User', role: 1, email: 'admin@gmail.com', password: "admin123")
user_2 = User.create(username: 'Reg User', role: 0, email: 'reg@gmail.com', password: "reg123")

creation_1 = Creation.create(artist: 'Pablo Picasso', title: 'Les Demoiselles d Avignon', type_of_work: 'painting', medium: 'Oil on canvas', dimensions: '40 x 50 cm', date_of_composition: '1907',  art_category: 'cubism', country_of_origin: 'Spain', comment: "A roomfull of wenches", price: '9500')
creation_1.creation_pic.attach(io: File.open("app/assets/images/Les-Demoiselles-dAvignon.jpeg"), filename: "Demoiselles.jpeg")

creation_2 = Creation.create(artist: 'Marcel Duchamp', title: 'The Bride Stripped Bare by Her Batchellors, Even', type_of_work: 'painting', medium: 'Oil on canvas', dimensions: '35 x 40 cm', date_of_composition: '1923', art_category: 'dadaism', country_of_origin: 'France', comment: "A transparent gathering of suitors" price: '2300')
creation_2.creation_pic.attach(io: File.open("app/assets/images/The-Large-Glass.jpeg"), filename: "The Bride.jpeg")

creation_3 = Creation.create(artist: 'Paul Cezanne', title: 'Harlequin', type_of_work: 'painting', medium: 'Oil on canvas', dimensions: '35 x 40 cm', date_of_composition: '1870', art_category: 'post-impressionism', country_of_origin: 'France', comment: "Commedia del Arte fragmented", price: '4300')
creation_3.creation_pic.attach(io: File.open("app/assets/images/Harlequin.jpeg"), filename: "Harlequin.jpeg")

creation_4 = Creation.create(artist: 'Paul Gauguin', title: 'When Will You Marry?', type_of_work: 'painting', medium: 'Oil on canvas', dimensions: '35 x 40 cm', date_of_composition: '1886', art_category: 'post-impressionism', country_of_origin: 'France', comment: "Savagery in technicolor", price: '3900')
creation_4.creation_pic.attach(io: File.open("app/assets/images/When-Will-You-Marry.jpeg"), filename: "When.jpeg")

creation_5 = Creation.create(artist: 'Claude Monet', title: 'Impression, Sunrise', type_of_work: 'painting', medium: 'Oil on canvas', dimensions: '35 x 40 cm', date_of_composition: '1836', art_category: 'impressionism', country_of_origin: 'France', comment: "Postcard rather diffuse", price: '6300')
creation_5.creation_pic.attach(io: File.open("app/assets/images/Impression-Sunrise.jpeg"), filename: "Impression.jpeg")

creation_6 = Creation.create(artist: 'Vincent Van Gogh', title: 'Vase with Twelve Sunflowers', type_of_work: 'painting', medium: 'Oil on canvas', dimensions: '35 x 40 cm', date_of_composition: '1864', art_category: 'post-impressionism', country_of_origin: 'France', comment: "Flowers a-bloom in color", price: '7300')
creation_6.creation_pic.attach(io: File.open("app/assets/images/Vase-with-Twelve-Sunflowers.jpeg"), filename: "Sunflowers.jpeg")

purchase_1 = Purchase.create(user_id: 1, creation_id: 1, quantity: 1)
purchase_2 = Purchase.create(user_id: 2, creation_id: 2, quantity: 2)
