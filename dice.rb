require "sinatra"
require "sinatra/reloader"

get("/") do
  '<p>Hello World</p>
  <p><a href="https://silver-funicular-q7754xvr4jqrcxvrv-4567.app.github.dev/dice/1/20">20 side die</a></p>
  <p><a href="https://silver-funicular-q7754xvr4jqrcxvrv-4567.app.github.dev/dice/2/6"> 2 6 siders</a></p>'
end

get("/zebra") do
  "We must add a route for each path we want to support" 
end
get("/giraffe") do
  "Hopefully this shows up without having to restart the server 🤞🏾"
end

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<h1>2d6</h1>
   <p>#{outcome}</p>"
end
get("/dice/1/20") do

  first_die = rand(1..20)
  
	
  outcome = "You rolled a #{first_die}"
	
  "<h1>2d6</h1>
   <p>#{outcome}</p>"
end