# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Status.find_or_create_by(name: 'Want to try')
Status.find_or_create_by(name: 'Would buy again')
Status.find_or_create_by(name: 'Would not buy again')
