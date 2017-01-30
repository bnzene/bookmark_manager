ENV['RACK_ENV'] ||='development'

require 'sinatra/base'
require_relative 'models/link'
require_relative 'models/tag'
require_relative 'models/user'
require_relative 'data_mapper_setup'
require 'pry-byebug'

class BookmarkManager < Sinatra::Base
enable :sessions
set :session_secret, 'super secret'

  get '/links' do
    @links = Link.all
    @users = User.all
    erb :'links/index'
  end

  post '/links' do
    tags = params[:tags].split.map { |tag| Tag.first_or_create(name: tag) }
    Link.create(url: params[:url], title: params[:title], tags: tags)
    redirect '/links'
  end

  get '/links/new' do
    erb :'links/new'
  end

  get '/users/new' do
    erb :'users/new'
  end

  post '/users' do
    user = User.create(email: params[:email],
    password: params[:password])
    session[:user_id] = user.id
    redirect to('/links')
  end

  helpers do
    def current_user
      @current_user ||= User.get(session[:user_id])
    end
  end

  get '/tags/:name' do |name|
    @links = Tag.all(:name => name).links
    erb :'links/index'
  end


  run! if app_file == $0
end
