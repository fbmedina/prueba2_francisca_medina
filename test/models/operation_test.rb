require 'test_helper'

class OperationTest < ActiveSupport::TestCase
  def setup
    @o = operations(:one)
  end

  test 'obtain responsible worker operation' do
    assert_equal @o.worker, worker(:one), 'operation and worker are equal'
  end
end
