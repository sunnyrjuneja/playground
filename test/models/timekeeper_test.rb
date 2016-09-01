require 'test_helper'

class TimekeeperTest < ActiveSupport::TestCase
  def setup
    @t = Timekeeper.new(start: Time.current, end: 5.minutes.from_now,
      description: 'A test for timekeeper.'
    )
  end

  test 'setup should be valid' do
    assert @t.valid?
  end

  test 'must have start time' do
    @t.start = nil
    assert_not @t.valid?
  end

  test 'must have end time' do
    @t.end = nil
    assert_not @t.valid?
  end

  test 'must have description' do
    @t.description = nil
    assert_not @t.valid?
  end
end
