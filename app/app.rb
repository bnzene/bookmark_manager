ENV['RACK_ENV'] ||='development'

require 'sinatra/base'
# require_relative 'models/link'
# require_relative 'models/tag'
require_relative 'data_mapper_setup'
require 'pry-byebug'

class BookmarkManager < Sinatra::Base
#  enable :sessions

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do

    erb :'links/new'
  end

  post '/links' do
    Link.create(url: params[:url], title: params[:title], tags: [
      Tag.first_or_create(name: params[:tags])
      ])
    redirect '/links'
  end

  get '/tags/:name' do |name|
    @links = Tag.all(:name => name).links
    erb :'links/index'
  end

  run! if app_file == $0
end
