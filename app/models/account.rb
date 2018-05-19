class Account < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :projects, dependent: :destroy

  def any_available_licenses?
    licenses_used.to_i < total_licenses.to_i
  end


  def increase_used_license
    self.licenses_used = (licenses_used).to_i + 1
    save
  end

  def decrease_used_license
    self.licenses_used = (licenses_used).to_i - 1
    save
  end
end
