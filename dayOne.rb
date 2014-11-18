books_i_like = [
	{
	title: "Lord of the Flies",
	author:  "J.W. Gould"
	}
	]

my_books = [
	{title: "Design Pattens", author: ["Vlissides", "Helm", "Johnson", "Gamma"]},
	{title: "Patterns of Enterprise Application Architecture", author: "Fowler"},
	{title: "Domain Driven Design", author: "Eric Evans"}

	]

do_good_employees = [
	{name: "Alice", age: 25, phone: "555-555-5555", title:"event receptionist"}
	]

RI_data = [
		{
		population: 1_050_292,
		nickname: "Rhode Islanders",
		capital: "Providence",
		most_populous: ["Warwick", "Cranston"]
		medium_income: 54_619
		}

	]

new_laptop =
	{
		model: "Apple MacBook Air",
		hdd: "256gb",
		ram_max: "8gb",
		ram_selected: "8gb",
		display: "retina",
		processor: "i7",
		cpu_Mfcture: "intel",
		preloaded_software: ["iPhoto", "Safari", "iMovie", "iMessage"]
		}

nicks_Dogs = [
	{
		name: "Maple",
		age: 4,
		color: "brown",
		breed: "pitbull",
		favorite_game: "tug-o-war"
		likes_lake_swim: true
	},
	{
		name: "Atlas",
		age: 3,
		favorite_game: "fetch",
		energy_level: "super",
		likes_lake_swim: true
	}
]

restaurants = 	[
	{
		name: "Patrick's Pizza Palace",
		health_score: 100,
		patrons: [
					{
						name: "Nick",
						favorite_restaurant: true,
						favorite_meal_combo:{
							appetizer: "mozarella sticks",
							entree: "chicken parm",
							dessert: "tiramisu"
							},
					{
						name: "Kate",
						favorite_restaurant: false,
						favorite_meal_combo:{
							appetizer: "calzone",
							entree: "slice-o-pizza",
							dessert: "cannoli"

						}
					},
					{
						name: "Harsh",
						favorite_restaurant: false,
						favorite_meal_combo:{
							appetizer: "garlic knots",
							entree: "spaghetti",
							dessert: "cheesecake"
						}
					}
					}
				]
	}
				]


class restaurant2
	attr_reader :name


	def initialize (name, health)
		@name = name
		@health = health
		@appetizers = []
		@entrees = []
		@desserts = []
	end
	def add_appetizer(appetizer)
		@appetizers << appetizer
	end
	def add_entree(entree)
		@entrees << entree
	end
	def add_dessert(dessert)
		@desserts << dessert
	end
end