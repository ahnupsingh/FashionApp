class Bill < ApplicationRecord
  has_many :particulars, inverse_of: :bill
  accepts_nested_attributes_for :particulars, reject_if: :all_blank, allow_destroy: true
end
