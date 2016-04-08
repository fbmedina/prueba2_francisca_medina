class Inventary < ActiveRecord::Base
  belongs_to :operation, dependent: :destroy

  before_destroy :register_deleted_item

  private
    def register_deleted_item
    end
end
