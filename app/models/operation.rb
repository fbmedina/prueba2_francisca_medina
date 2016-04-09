class Operation < ActiveRecord::Base
  belongs_to :worker
  has_one :inventary

  before_destroy :register_deleted_operation

  scope :operations_performed_on_the_last_day, where('published_at >= ?', Time.now - 1.day)
  scope :the_latest_5, order(created_at: :desc).limit(5)

  private
    def register_deleted_operation
      Register.create(description: 'La operación con referencia a la pieza #{self.inventary_id} y al usuario #{self.worker_id}, #{self.worker} ha sido borrada')
    end
end
