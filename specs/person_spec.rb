require 'minitest/autorun'
require 'minitest/rg'
require_relative '../person.rb'

class TestPerson < MiniTest::Test

  def setup
    @person = Person.new("Keith", 25)
  end

  def test_get_name
    assert_equal('Keith', @person.name)
  end


def test_get_age
  assert_equal(25, @person.age)
end










end
