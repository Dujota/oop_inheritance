# Quote collector
#
# The second child class we're going to define represents a person who loves to memorize quotes and then travel the world, unleashing poor translations of them to unsuspecting passers-by.
#
# Each instance of this class should have its own ever-growing collection of favourite quotes. It should have the ability to add a new quote to its collection as well as the ability to select a random quote to share in the local language.

require_relative 'Multilinguist'

class QuoteCollector < Multilinguist

  @@collection_of_quotes = [
    "YOLO - you only live ones",
    "Work hard, play hard!",
    "Gotcha Succa!!!! this is not a real quote!",
    "In the beginning the Universe was created. This has made a lot of people very angry and has been widely regarded as a bad move.",
    "My philosophy is that not only are you responsible for your life, but doing the best at this moment puts you in the best place for the next moment.",
    "If God lived on earth, people would break his windows."
  ]

  def initialize
  end

  #not needed if i just hard code quotes in the array itself

  # def self.create(quote)
  #   new = QuoteCollector.new(quote)
  #   @@collection_of_quotes << new
  #   return @@collection_of_quotes
  # end

  def view_quotes
    @@collection_of_quotes
  end

  def add_new(new_quote)
    @@collection_of_quotes << new_quote

  end


  #use sample to pick a random element of the array, then feed that output into the say_in_local_language() mehtod inherited from Multilinguist
  def random_quote
    pick_a_quote = @@collection_of_quotes.sample
    say_in_local_language(pick_a_quote)
  end

end

my_quotes = QuoteCollector.new

puts my_quotes.inspect
puts my_quotes.view_quotes.inspect
puts my_quotes.add_new("I like to party!")
puts my_quotes.random_quote
puts my_quotes.travel_to('India')
puts my_quotes.random_quote
