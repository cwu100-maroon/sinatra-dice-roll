require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

# Need this configuration for better_errors
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')


# get("/giraffe") do
#   "Hopefully this shows up without having to restart the server 🤞🏾"
# end

get("/dice2/6") do
  first_die = rand(1..6)
  second_die = rand (1..6)
  sum = first_die + second_die

  @outcome = "you rolled the first die as #{first_die} and second die as #{second_die} for a total sum of #{sum}"

  erb(:two_six)
end

get("/dice/2/10")do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die

  @outcome = "first 10 die is #{first_die} and second die is #{second_die} for a sum total of #{sum}"
  erb(:two_ten)
end

get("/dice/1/20")do
  first_die = rand(1..20)
  

  outcome = "first die is #{first_die}"
end

get("/") do
 erb(:elephant)
end
