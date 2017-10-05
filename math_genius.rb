# Math genius
#
# The multilinguist documentation tells us that this class represents a world-traveller who speaks many languages. The first child class that we're going to define represents a world-travelling math genius who can speak many languages and mentally add up huge lists of numbers.
#
# Instances of this class should be able to accept a list of numbers and return a sentence stating the sum of the numbers. Make use of the inherited Multilinguist methods to ensure this sentence will always be delivered in the local language.


require_relative 'multilinguist' #load the multilinguist class

class MathGenius < Multilinguist #inherit the multilinguist class

  def initialize

  end

  def report_total(num_list)
    sum = 0
    self.each { |num_in_list| sum += num_in_list  }
    self.say_in_local_language("The sum of the numbers is #{sum}")
  end
end

# Instances of this class should be able to accept a list of numbers and return a sentence stating the sum of the numbers.

me = MathGenius.new
puts me.report_total([23,45,676,34,5778,4,23,5465]) # The total is 12048
me.travel_to("India")
puts me.report_total([6,3,6,68,455,4,467,57,4,534]) # है को कुल 1604
me.travel_to("Italy")
puts me.report_total([324,245,6,343647,686545]) # È Il totale 1030767
