get '/' do
  # Look in app/views/index.erb
  erb :index
end


# link = "http://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC&tag=puppies"
# gif = JSON.parse(open(link).read)["data"]["url"] <-- put this in the controller and save the gif as a gif object and render it in the page
# add a .env file to gitignore