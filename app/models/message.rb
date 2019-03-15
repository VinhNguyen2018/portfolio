class Message < ApplicationRecord
  validates :lastname, presence: true
  validates :firstname, presence: true
  validates :email, presence: true
  validates :message, presence: true
  # def persisted?
  #   false
  # end
end
