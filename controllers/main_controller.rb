require './lib/str_seg'
# The path being defined for this controller action is just "/", meaning 
# the root path. It's the homepage.
MyApp.get "/" do
  # If a GET request is made to the root path, the following line of code
  # looks for a .erb view file located in the 'views' directory at the given
  # location. So it's going to look for views/main/welcome.erb.
  # 
  # Then it will combine that view file with the layout file and sent the
  # combined document back to the client.

  #path that sinatra is running on, route path
  erb :"main/welcome"
end



MyApp.post '/form' do

  x = StringSegmentor.new

  @y = x.segment_string(params[:message]).join(" ")



  erb :"main/form"
end

  






