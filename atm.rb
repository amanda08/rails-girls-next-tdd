def withdraw(amount)
  if amount <= 0 # this deals with some of the situations...
    return false
  end
  if amount%10==0
    result = []
    while amount!=0
      amount -= 10
      result << 10
    end
    return result
  else
    return false
  end
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
    [45, false],
    [20, [10, 10]],
    [40, [10, 10, 10, 10]],
  ].each do |input, expected|
    it "should return #{expected} when $#{input} is withdrawn" do
      withdraw(input).must_equal expected
    end
  end
end