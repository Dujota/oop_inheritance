require 'minitest/autorun'
require 'minitest/pride'
require './multilinguist.rb'

class TestMultilinguist < MiniTest::Test
  def setup
    @multilinguist = Multilinguist.new
  end

  def teardown;end

  def test_languange_in_method
    result = @multilinguist.language_in('Canada')

    expected = 'en'

    assert_equal(expected, result)
  end

  def test_initialize
    result = @multilinguist.current_lang
    expected = 'en'
    assert_equal(expected, result)
  end

  def test_travel_to_method
    result = @multilinguist.travel_to('France')
    expected = 'fr'
    assert_equal(expected, result)
  end
end
