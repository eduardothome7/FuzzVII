# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Icon.create(title: 'Users', name: 'people_outline')
Icon.create(title: 'Whatshot', name: 'whatshot')
Icon.create(title: 'menu', name: 'menu')
Icon.create(title: 'flag', name: 'flag')
Icon.create(title: 'business', name: 'business')
Icon.create(title: 'calendar', name: 'event')
Icon.create(title: 'message', name: 'announcement')
Icon.create(title: 'payment', name: 'payment')
Icon.create(title: 'dashboard', name: 'dashboard')
Icon.create(title: 'mic', name: 'mic')
Icon.create(title: 'people_outline', name: 'people_outline')
Icon.create(title: 'settings', name: 'settings')
Icon.create(title: 'assessment', name: 'assessment')
Icon.create(title: 'room', name: 'room')
Icon.create(title: 'favorite_border', name: 'fav')
Icon.create(title: 'trending_up', name: 'trend')
Icon.create(title: 'star_border', name: 'star')


Mod.create('title': 'Funcionários', category_mod_id: 3, icon_id: 2, slug: 'employees')
Mod.create('title': 'Funcionamento', category_mod_id: 3, icon_id: 1,  slug: 'studio/:studio_id/info')
Mod.create('title': 'Gastos', category_mod_id: 3, icon_id: 1,  slug: '')


