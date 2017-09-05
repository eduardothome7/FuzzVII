# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@icon_users 			= Icon.create(title: 'Users', name: 'people_outline')
@icon_Whatshot 			= Icon.create(title: 'Whatshot', name: 'whatshot')
@icon_menu 				= Icon.create(title: 'menu', name: 'menu')
@icon_flag 				= Icon.create(title: 'flag', name: 'flag')
@icon_business 			= Icon.create(title: 'business', name: 'business')
@icon_calendar 			= Icon.create(title: 'calendar', name: 'event')
@icon_message 			= Icon.create(title: 'message', name: 'announcement')
@icon_payment 			= Icon.create(title: 'payment', name: 'payment')
@icon_dashboard 		= Icon.create(title: 'dashboard', name: 'dashboard')
@icon_mic 				= Icon.create(title: 'mic', name: 'mic')
@icon_people_outline 	= Icon.create(title: 'people_outline', name: 'people_outline')
@icon_settings 			= Icon.create(title: 'settings', name: 'settings')
@icon_assessment 		= Icon.create(title: 'assessment', name: 'assessment')
@icon_room 				= Icon.create(title: 'room', name: 'room')
@icon_favorite_border 	= Icon.create(title: 'favorite_border', name: 'fav')
@icon_trending_up 		= Icon.create(title: 'trending_up', name: 'trend')
@icon_star_border 		= Icon.create(title: 'star_border', name: 'star')

@administrador 	= CategoryMod.create('title' => 'Administrador','icon_id' => @icon_settings.id)
@musica 		= CategoryMod.create('title' => 'Músico')
@proprietario	= CategoryMod.create('title' => 'Proprietário')

@mod_funcionarios 	= Mod.create('title': 'Funcionários', category_mod_id: @proprietario.id, icon_id: 2, slug: 'employees')
@mod_funcionamento 	= Mod.create('title': 'Funcionamento', category_mod_id: @proprietario.id , icon_id: 1,  slug: 'studio/:studio_id/info')
@mod_gastos 		= Mod.create('title': 'Gastos', category_mod_id: @proprietario.id, icon_id: 1,  slug: '')

@plan1 = Plan.create('name':'Músico', 'description':'Agende em seus estúdios favoritos. Marque seus favoritos, e forneça <em>feedback</em> através de avaliações e comentários! Pague 
	seus ensaios e gravações online de forma simples e rápida!', 'price': 300.0)
@plan2 = Plan.create('name':'Proprietário', 'description':'Disponibilize a agenda de seu estúdio para usuários agendarem em suas salas! 
	Disponibilize equipamentos para locação e controle o fluxo através do calendário!', 'price': 800.0)
@plan3 = Plan.create('name':'Empresário', 'description': 'Administre até 3 estúdios! Registro e liberação de funções para funcionários. Controle de gastos do estúdio e financeiro.', 'price': 1000.0)

@category_event = CategoryEvent.create(name: 'Ensaio')
@category_event2 = CategoryEvent.create(name: 'Gravação')
@category_event3 = CategoryEvent.create(name: 'Mixagem')

@mod_tour_studios  = ModTour.create(title: 'Estúdios',mod_id: 5, picture: '', description: 'Olá! Bem vindo ao sistema Fuzz! Antes de agendar, você precisa cadastrar seu estúdio musical. Não se preocupe, o cadastro é simples e rápido, e após a confirmação, você já pode adicionar as salas. Para iniciar, clique no botão abaixo, no canto direito!', background: 'gradient_purple', a_link: 'new_studio_path' )
@mod_tour_rooms    = ModTour.create(title: 'Salas',mod_id: 15, picture: '', description: 'Olá denovo! Bom, imaginamos que você já cadastrou seu estúdio! Simples não? Agora, vocÊ poderá cadastrar uma ou mais salas de ensaio ou espaços de gravação, onde seus clientes irão se reunir e utilizar o espaço disponibilizado. O cadastro é tão simples quando o passo anterior! Quando desejar iniciar, clique no botão do canto inferior direito! :)', a_link: 'new_room_path' )
@mod_tour_calendar = ModTour.create(title: 'Calendário de Reservas',mod_id: 15, picture: '', description: 'Quase pronto! Agora que você cadastrou pelo menos uma sala, para habilitar o agendamento de reservas, vocÊ deverá disponibilizar o calendário, feito de acordo com o horário de funcionamento! Para cadastro o calendário das salas, clique no botão no canto superior direito!', a_link: 'new_calendar_path' )
@mod_tour_events   = ModTour.create(title: 'Reservas', mod_id: 7, picture: '', description: 'Pronto! Você já realizou os cadastros necessários para realizar reservas em sua agenda! Você habilitou o calendário para reservas! Este é apenas o começo! Você ainda poderá adicionar funcionários e equipamentos em seu estúdio! Para agendar sua primeira reserva é fácil! Você poderá ver clicando no botão do canto direito abaixo! Boas reservas! ')


