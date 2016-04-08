require 'test_helper'

class WorkerTest < ActiveSupport::TestCase
  def setup
    @w = workers(:one)
  end

  test 'invalid without name' do
    @w.name = nil
    assert @w.invalid?, 'worker needs to require name'
  end

  test '' do
  end
end
