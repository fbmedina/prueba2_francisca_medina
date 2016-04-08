class Inventary < ActiveRecord::Base
  belongs_to :operation, dependent: :destroy
end
