# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bob = User.create(email: "bob@example.com")
mary = User.create(email: "mary@example.com")
bill = User.create(email: "bill@example.com")

bob.posts.create([{title: "Bob's First Post",
										 body: "Lorem ipsum dolor sit amet, nostrud vocibus nec ad. Novum sensibus philosophia id ius, ea aliquip legimus constituam vim, et mea altera concludaturque. Legere putant expetendis ea eum, inani dissentias ea vim, mei veniam eirmod dissentiunt et. Ex vim nobis ridens deserunt. Pri errem utinam luptatum at, eos ut causae periculis voluptatum."},
										{title: "Bob's Second Post",
										 body: "I'm gonna keep this one short"}])
bob.musings.create([{title: "Bob's First Musing", 
											 body: "Eu ius iriure eruditi iudicabit, in his cibo elitr everti. Ut modo detraxit evertitur mei. Stet vivendo ius ea, porro expetenda eos in. Volumus sensibus ex nec, ne sea petentium euripidis, nobis partiendo sea an."},
											{title: "Bob's Second Musing",
											 body: "So the other day...nvm."}])

mary.posts.create([{title: "Mary's First Post",
										 body: "Lorem ipsum dolor sit amet, nostrud vocibus nec ad. Novum sensibus philosophia id ius, ea aliquip legimus constituam vim, et mea altera concludaturque. Legere putant expetendis ea eum, inani dissentias ea vim, mei veniam eirmod dissentiunt et. Ex vim nobis ridens deserunt. Pri errem utinam luptatum at, eos ut causae periculis voluptatum."},
										{title: "Mary's Second Post",
										 body: "I like Ruby on Rails"}])
mary.musings.create([{title: "Mary's First Musing", 
											 body: "Eu ius iriure eruditi iudicabit, in his cibo elitr everti. Ut modo detraxit evertitur mei. Stet vivendo ius ea, porro expetenda eos in. Volumus sensibus ex nec, ne sea petentium euripidis, nobis partiendo sea an."},
											{title: "Mary's Second Musing",
											 body: "Vix te nostro eruditi. Consul intellegebat ex pro, ea nec idque etiam corpora. Sale blandit incorrupte id usu, an labore scripta usu. In mel nibh fierent corrumpit. Facer feugiat probatus in sit, nam ei solet forensibus. Ex iuvaret iracundia democritum duo, his et dolorem salutandi.."}])

bill.posts.create([{title: "Bill's First Post",
										 body: "Lorem ipsum dolor sit amet, nostrud vocibus nec ad. Novum sensibus philosophia id ius, ea aliquip legimus constituam vim, et mea altera concludaturque. Legere putant expetendis ea eum, inani dissentias ea vim, mei veniam eirmod dissentiunt et. Ex vim nobis ridens deserunt. Pri errem utinam luptatum at, eos ut causae periculis voluptatum."},
										{title: "Bill's Second Post",
										 body: "Nam quando evertitur te, mucius essent maiestatis qui ea. No mea ferri postulant, laudem audiam adolescens eu mea. Id illud error splendide has. Mel ei perpetua prodesset dissentiet, solet docendi adipisci vis ad. Ex impedit habemus singulis vel, pro nisl debet ex."}])
bill.musings.create([{title: "Bill's First Musing", 
											 body: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam"},
											{title: "Bill's Second Musing",
											 body: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut"}])

