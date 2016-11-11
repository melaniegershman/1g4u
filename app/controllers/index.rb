get '/' do
  # Look in app/views/index.erb
  link = "http://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC&tag=puppies"
  @gif = JSON.parse(open(link).read)["data"]["image_url"] 
  erb :index
end

# put this in the controller and save the gif as a gif object and 
# render it in the page