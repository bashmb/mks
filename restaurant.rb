class restaurant2
	def initialize (name, health, appetizers[], entrees[], desserts[])
		@name = name
		@health = health
		@appetizers = appetizers[]
		@entrees = entrees[]
		@desserts = desserts[]
	end
	def add_appetizer(appetizer)
		@appetizer = appetizer
		appetizers[] << appetizer
	end
	def add_entree(entree)
		@entree = entree
		entrees[] << entree
	end
	def add_dessert(dessert)
		@dessert = dessert
		dessert[] << dessert
	end
end

