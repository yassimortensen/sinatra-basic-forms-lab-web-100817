require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :index
  end

  get "/new" do
    erb :create_puppy
  end

  post "/" do
    @new_puppy = Puppy.new(params[:name], params[:breed], params[:age])
    # You'll need to have a third controller action that takes the input from the
    # user and renders a third view (views/display_puppy.erb) which displays the info for the puppy that was just created.
    erb :display_puppy
  end

end
