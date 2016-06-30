require ('pry')

class String
  define_method(:anagram) do |strings|
    string_1 = self.split("").sort()
    strings = strings.split(" ")
    new_array = []
    strings.each() do |string|
      sorted_string = string.split("").sort()
      if sorted_string == string_1
        new_array.push(string)
      end
    end
    new_array
  end
end
