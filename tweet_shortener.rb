def dictionary(key, value)
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
    string = tweet.split.map do |word|
        if dictionary.keys.include?(word.downcase)
                word = dictionary[word.downcase]
        else
            word
        end
    end
    puts string.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |element|
    puts word_substituter(element)
  end
end 

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
      
  end
end
  
end