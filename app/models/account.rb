class Account < ApplicationRecord

	validates :CollaboratorName, presence: true, length: { maximum: 60 }
	validates :number, presence: true, length: { maximum: 13 }
	validates :name, presence: true, length: { maximum: 13 }
	validates :Phone, presence: true, length: {maximum: 15}
	validates :WorkFront, presence: true, length: {maximum: 20}
	validates :CostCenter, presence: true, length: {maximum: 6}
end
