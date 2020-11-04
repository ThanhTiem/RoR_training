class User < ApplicationRecord
	has_many :articles
	has_many :comments

	validates :first_name, :last_name,:email,:gender,presence: true
	validates :email, uniqueness: true
	validates :address, length: { maximum: 49 }
	# validates :birthday_validates

	before_create :set_age

	
	def birthday_validates
		errors.add(:birthday, "is invalid") unless birthday.to_date < "1/1/1900".to_date
	end
	def set_age
		self.age = Time.current.year - birthday.year
	end
end
