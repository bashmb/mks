require 'rest-client'
require 'json'
response = RestClient.get("critics.api.mks.io/restaurants")
ratings = JSON.parse(response)
#puts ratings[0]
#ratings[0].keys
# reviewers = ratings.map {|r| r["reviewer"]}.uniq
# puts reviewers
# terse = ratings.select {|r| r["comment"].length < 30 }
# puts terse
# rate_eight = ratings.select {|r| r["rating"].to_i >7 }
# rate_eight.map {|r| puts r["venue"]}

# name_austin = ratings.select {|r| r["venue"].match(/austin/i)}
# name_austin.map {|r| puts r["venue"]}


movies = RestClient.get("critics.api.mks.io/movie-genres")
reviews = JSON.parse(movies)

all_genres = reviews.map {|r| r["genre"]}

all_genres.each do |x|
  puts x.to_i
  puts all_genres[x.to_i]
  puts count_reviews = reviews.select { |r| r["genre"]==all_genres[x.to_i]}.count
end

# puts count_reviews = reviews.select { |r| r["genre"]==all_genres[2]}.count