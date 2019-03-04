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
    tweet.split.map do |word|
        if dictionary.keys.include?(word.downcase)
            dictionary[word.downcase]
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

def selective_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140 
    word_substituter(tweet)[1..139]
  else
    word_substituter(tweet)
  end
end