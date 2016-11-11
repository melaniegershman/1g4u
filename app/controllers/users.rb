get '/users/new' do
  erb :'/users/new'
end


post '/users' do
  @user = User.new(params[:user])
  if @user.save
    puts "User was saved!"
    session[:user_id] = @user.id
    redirect "/"
  else
    puts "User wasn't saved!"
    redirect '/users/new'
  end
end

get '/users/:user_id' do
  @user = User.find_by(id: params[:user_id])
  if @user
    status 200
    erb :'/users/show'
  else
    status 404
    erb :'/404'  
  end
end

delete '/users/:user_id' do
  @user = User.find_by(id: params[:user_id])
  if @user && current_user == @user
    @user.destroy
    redirect '/'
  else
    status 404
    erb :'/404'    
  end
end