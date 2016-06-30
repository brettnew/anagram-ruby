require('rspec')
require('anagram')

describe('String#anagram') do
  it('will take two strings and return the second string if it matches the first string') do
    expect('cat'.anagram('act')).to(eq(["act"]))
  end
  it('will take one word string and multiple word string and return true if match') do
    expect('cat'.anagram('act tac atc tca cta')).to(eq(['act', 'tac', 'atc', 'tca', 'cta']))
  end
  it('will only return strings that match the first string') do
    expect('cat'.anagram('act tac atc tca cta bat')).to(eq(['act', 'tac', 'atc', 'tca', 'cta']))
  end
end


# Webpage will have two forms. First form is for user to input the target word. Second form will allow the user to enter one or more words. Once the user clicks the button, our program will compare the target word and the second word or words to see which match. Program will return whichever words from the second form are anagrams of the target word.

# Program will take target word as method
# target word will be split into array of string of letters
# array of letts will be sorted using array#sort()
#
#
# string of words(word_list) as an argument.
# for now, just one word in word_list
# word will also be split into array of string of letters
# array of letters will be sorted using array#sort
# now, first array of target word will be compared to second array
# if they match, then return the second array
# join the array, and return to user as string
