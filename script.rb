def substrings (my_string, words_arr = [])
  my_string = my_string.downcase
  my_words = my_string.split(" ")
  dict = Hash.new(0)

  for word in my_words
    for el in words_arr
      if word.include? el
        dict[el] += 1
      end
    end
  end

  return dict
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)