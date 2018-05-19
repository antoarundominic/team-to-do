class Task < ApplicationRecord
  belongs_to :account
  belongs_to :project
  has_one :user
end
