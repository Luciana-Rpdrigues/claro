class Account < ApplicationRecord

	
	validates :number, presence: true, length: { maximum: 13 }
	validates :name, presence: true, length: { maximum: 13 }
	validates :phone, presence: true, length: {maximum: 15}
	validates :work_front, presence: true, length: {maximum: 20}
	validates :cost_center, presence: true, length: {maximum: 6}
end
