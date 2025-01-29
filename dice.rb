require "sinatra"
require "sinatra/reloader"

# get("/giraffe") do
#   "Hopefully this shows up without having to restart the server 🤞🏾"
# end

get("/dice2/6") do
  first_die = rand(1..6)
  second_die = rand (1..6)
  sum = first_die + second_die

  outcome = "you rolled the first die as #{first_die} and second die as #{second_die} for a total sum of #{sum}"

  "<h1>2d6</h1>
  <p> #{outcome} </p>"
end

get("/dice/2/10")do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die

  outcome = "first die is #{first_die} and second die is #{second_die} for a sum total of #{sum}"
end

get("/dice/1/20")do
  first_die = rand(1..20)
  

  outcome = "first die is #{first_die}"
end

get("/")do
  "<h1>Dice Roll</h1>
  <a ref = https://curly-trout-4jvrw5w4vpv52qpp4-4567.app.github.dev/dice2/6>2d6</a>
  <a ref = https://curly-trout-4jvrw5w4vpv52qpp4-4567.app.github.dev/dice2/6>2d10</a>
  <a ref = https://curly-trout-4jvrw5w4vpv52qpp4-4567.app.github.dev/dice/1/20>1d20</a>"
end
