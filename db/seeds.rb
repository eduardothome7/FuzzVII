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

@plan1 = Plan.create('name':'Músico', 'description':'Agende em seus estúdios favoritos. Marque seus favoritos, e forneça <em>feedback</em> através de avaliações e comentários! Pague 
	seus ensaios e gravações online de forma simples e rápida!', 'price': 300.0)
@plan2 = Plan.create('name':'Proprietário', 'description':'Disponibilize a agenda de seu estúdio para usuários agendarem em suas salas! 
	Disponibilize equipamentos para locação e controle o fluxo através do calendário!', 'price': 800.0)
@plan3 = Plan.create('name':'Empresário', 'description': 'Administre até 3 estúdios! Registro e liberação de funções para funcionários. Controle de gastos do estúdio e financeiro.', 'price': 1000.0)

