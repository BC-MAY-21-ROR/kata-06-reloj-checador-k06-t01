class Attendance < ApplicationRecord
  belongs_to :user

  enum type: %i[check_in check_out]
  self.inheritance_column = :_sti_disabled

  validates_presence_of :user_id
end
