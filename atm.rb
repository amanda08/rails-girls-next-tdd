def withdraw(amount)
  if amount <= 0 || amount%5!=0 # this deals with some of the situations...
    return false
  end

    result = []
    while amount>=10
      amount -= 10
      result << 10
    end
    while amount>=5
      amount -= 5
      result << 5
    end
  return result
end

# import required testing libraries
require 'minitest/spec'
require 'minitest/autorun'

# Below are the tests for automatically checking your solution.
# You need to replace these tests after each step.

describe 'atm' do
  [
    [-1, false],
    [0, false],
    [7, false],
    [20, [10, 10]],
    [25, [10, 10, 5]],
    [35, [10, 10, 10, 5]],
  ].each do |input, expected|
    it "should return #{expected} when $#{input} is withdrawn" do
      withdraw(input).must_equal expected
    end
  end
end