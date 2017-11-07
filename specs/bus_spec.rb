require 'minitest/autorun'
require 'minitest/rg'
require_relative '../bus.rb'
require_relative '../person.rb'

class TestBus < MiniTest::Test

def setup
  # passengers = []
  @bus = Bus.new(22, "Ocean Terminal")
  @person1 = Person.new("Keith", 25)
  @person2 = Person.new("Sandy", 23)
end

def test_drive
  # passengers =[]
  # bus = Bus.new(22, "Ocean Terminal", )
  assert_equal("brum brum", @bus.drive("brum brum"))
end

def test_number_of_passengers
  assert_equal(0, @bus.number)
end

def test_pick_up_passengers
  @bus.passengers_add(@person1)
  assert_equal(1, @bus.number)
end

def test_drop_off_passengers
  @bus.passengers_remove(@person1)
  assert_equal(0, @bus.number)
end

def test_remove_all_passengers
  @bus.passengers_add(@person1)
  @bus.passengers_add(@person2)
  @bus.empty_bus
  assert_equal(0, @bus.number)
end



end
