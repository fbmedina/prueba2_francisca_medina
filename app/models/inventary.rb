class Inventary < ActiveRecord::Base
  belongs_to :operation, dependent: :destroy

  before_destroy :register_deleted_item

  scope :items_not_used_in_any_operation, where(operation: nil)

  private
    def register_deleted_item
      Register.create(description: 'La pieza con serial #{self.serial_number} ha sido borrada')
    end
end
