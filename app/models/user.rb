class User < ApplicationRecord
  belongs_to :account
  has_many :tasks
  validate :can_add_user?, :on => :create
  after_commit :update_licenses, on: :create
  after_commit :remove_licens, on: :destroy  
  private
    def can_add_user?
      errors.add(:base, :blank, message: 'licence not available') unless account.any_available_licenses?
    end

    def update_licenses
      account.increase_used_license
    end

    def remove_license
      account.decrease_used_license
    end
end
