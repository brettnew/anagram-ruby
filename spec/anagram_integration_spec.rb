require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('anagram', {:type => :feature}) do
  it('processes the user entry and returns anagrams') do
    visit('/')
    fill_in('initial_word', :with => 'cat')
    fill_in('word_list', :with => 'act tac atc tca cta bat')
    click_button('Anagram')
    expect(page).to have_content('act tac atc tca cta')
  end
end
