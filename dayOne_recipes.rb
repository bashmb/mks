recipes = [
            {
              name: "apple salad",
              serves: 4,
              ingredients: 
                [
                  {
                    type: "mixed greens",
                    unit: "oz",
                    amount: 6
                  },
                  {
                    type: "honey mustard",
                    unit: "tbs",
                    amount: 1
                  },
                  {
                    type: "almonds",
                    unit: "tbs",
                    amount: 2
                  }
                  {
                    type: "apples"
                    amount: 4
                  }
                  {
                    type: "salt & pepper"
                  }
                ]
            },
            {
              name: "bean burgers",
              serves: 4,
              ingredients: 
                [
                  {
                    type: "black beans",
                    unit: "lbs",
                    amount: 2
                  },
                  {
                    type: "buns",
                    amount: 4
                  },
                  {
                    type: "lettuce",
                  }
                  {
                    type: "tomatoes, thinly sliced",
                    amount: 8
                  }
                  {
                    type: "feta cheese",
                    amount: 1
                    unit: "cup"
                  }
                  {
                    type: "mustard"
                  }
                ]
            },
            {
              name: "avocado soup",
              serves: 2,
              ingredients: 
                [
                  {
                    type: "avocado",
                    unit: 1
                  },
                  {
                    type: "soup",
                    amount: 1
                  },
                  {
                    type: "cookies",
                  }                  
                ]
            },
          ]
class recipes
  def initialize (name, serves)
    @name = name
    @serves = serves
  end
  def load_ingredients()
    lines = File.read('apple_salad.txt')
    recipes = []
    lines.each_line { |x| recipes << x}
    lines.each_line.gsub("\n", "")
    for x in 1...22
      do 
        ingredients <<  {
                        amount: lines[x].split(" ")[0],
                        unit: liens[x].split(" ")[1],
                        }
        
      end


  def add_ingredient(type, unit, amount)
    

recipes = File.read('apple_salad.txt')
lines = []
recipes.each_line { |x| lines << x}


lines.each { |line| line.gsub!("\n", "") }


-----------------------------------------------



File.read('recipes.txt')
data.split("\n\n")
data.split("\n\n").size
data.split("\n\n")
strings = data.split("\n\n")
strings.map
r = strings.map { |x| x.split("\n") }.first
r[2..-1]

class Parser


def build_ingredient_hash(string)
  units = ["oz", "lbs", "tbs", "cup"]
  amount = string.to_f #to_f is better in case we have amt = 0.50.
  split = string.split

  if amount.zero?
    {name: string, units: "", amount: ""}
  elsif units.include?(split[1])
    {name: split[2..-1].join(" "), units: split[1], amount: amount}
  else
    {name: sRplit[1..-1].join(" "), units: "", amount: amount}
  end
    

end

def super_cool_recipe_parser(file_name)
  data = File.read(file_name)
  recipes = data.split ("\n\n")
  recipes.map! { |x| x.split("\n") } # array of arrays


  cookbook = []

  recipes.map do |recipe|
    title = recipe.first
    servings = recipe[1].split.last.to_i #split with no argument splits on any amount of whitespace
    ingredients = recipe[2..-1]
  
    ingredients.map! do |ing|
        build_ingredient_hash(ing)
      end 
    { 
      title: title
      servings: servings
      ingredients: ingredients
    }


  end



  end
