class Operation < ActiveRecord::Base
  belongs_to :worker
  has_one :inventary

  before_destroy :register_deleted_operation

  private
    def register_deleted_operation
      Register.create(description: 'La operación con referencia a la pieza #{self.inventary_id} y al usuario #{self.worker_id}, #{self.worker} ha sido borrada')
    end
end
