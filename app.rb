require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  before do
    @bookmarks = Bookmark.all
  end

  get '/' do
    erb :'/bookmarks/index'
  end

  get '/bookmarks' do
    erb :'bookmarks/index'
  end

  get '/bookmarks/new' do
    erb :"/bookmarks/new"
  end

  post '/bookmarks' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
