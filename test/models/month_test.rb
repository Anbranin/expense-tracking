require 'test_helper'

class MonthTest < ActiveSupport::TestCase
  test 'month attributes must not be empty' do
    month = Month.new
    assert month.invalid?
    assert month.errors[:name].any?
    assert month.errors[:days].any?
  end

  test 'months cannot have days less than 29' do
    month = Month.new(name: 'February',
                      days: 20)
    assert month.invalid?
    month.days = 29
    assert month.valid?
  end
end
