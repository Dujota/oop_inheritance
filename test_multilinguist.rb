require 'minitest/autorun'
require 'minitest/pride'
require './multilinguist.rb'

class TestMultilinguist < MiniTest::Test
  def setup
    @multilinguist = Multilinguist.new
  end

  def teardown
  end

  def test_languange_in_method
    result = @multilinguist.language_in('Canada')

    expected = 'en'

    assert_equal(expected, result)
  end
end
