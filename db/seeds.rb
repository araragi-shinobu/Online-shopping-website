# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Product.delete_all
Product.create!(name: 'Comic Book', description:%{One Piece (stylized in all caps) is a Japanese manga series written and illustrated by Eiichiro Oda. It has been serialized in Shueisha's shōnen manga magazine Weekly Shōnen Jump since July 1997, with its individual chapters compiled into 107 tankōbon volumes as of November 2023. The story follows the adventures of Monkey D. Luffy and his crew, the Straw Hat Pirates, where he explores the Grand Line in search of the mythical treasure known as the "One Piece" in order to become the next King of the Pirates.}, image: 'book.png', price: 28.00)

Product.create!(name: 'iPhone13', description: %{iPhone 13, delivering breakthrough camera innovations and a powerhouse chip with an impressive leap in battery life. Featuring a sleek and durable design, an advanced new dual-camera system for improved photos and videos in low light, and introducing Cinematic mode.}, image: 'phone.png', price: 729.00)

Product.create!(name: 'ESP LTD EC-FR', description: %{The ESP LTD EC-BKS BLKS Black Metal, the name says it all: a metal axe reduced to the essentials in a cool "All Black" look. The body of the Black Metal is made of mahogany, the mahogany neck is kitted out with a noble Macassar Ebony fingerboard. When it comes to hardware, ESP LTD relies on the tried and tested: Tone Pros Bridge and Tailpiece as well as locking Tuners. A Seymour Duncan Blackened Black Winter humbucker is responsible for the ultimate sound.}, image: 'guitar.png', price: 1180.00)

Product.create!(name: 'Dingwall NG3', description: %{Body: Alder, Neck: Maple, Fretboard: Maple, Neck attachment: Bolt-on, Neck profile: Medium thin C, 24 Medium jumbo frets, Nut width: 46 mm (1.79"), Scale: (min.) 864 mm (34.02") - (max.) 940 mm (37.01"), Fretboard radius: 240 mm (9.45"), Pickguard: Carbon fibre print, Pickup: FD-3N (bridge) - FD- 3N (middle) - FD-3N (neck), Electronics: Dark glass 3-band, Controls: volume, bass, mids, treble, Rotary PU selector, Switch: Active / Passive, Colour: Metallic Black.}, image: 'bass.png', price: 2499.00)