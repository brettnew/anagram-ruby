require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagram') do
  @word_list = params.fetch("initial_word").anagram(params.fetch("word_list"))
  @initial_word = params.fetch("initial_word")
  erb(:anagram)
end
