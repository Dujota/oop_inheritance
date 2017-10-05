# Quote collector
#
# The second child class we're going to define represents a person who loves to memorize quotes and then travel the world, unleashing poor translations of them to unsuspecting passers-by.
#
# Each instance of this class should have its own ever-growing collection of favourite quotes. It should have the ability to add a new quote to its collection as well as the ability to select a random quote to share in the local language.

require_relative 'Multilinguist'

class QuoteCollector < Multilinguist

  @@collection_of_quotes = []
  attr_accessor :quote

  def initialize(quote)
    @quote = quote
  end

  






end
