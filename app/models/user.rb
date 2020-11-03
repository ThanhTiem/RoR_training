class User < ApplicationRecord
	has_many :articles
	has_many :comments

	validates :first_name, :last_name,:email,:gender,presence: true
	validates :email, uniqueness: true
	validates :address, length: { maximum: 49 }
	# validates :birthday, :in Date.new(1990)..Time.now.year

	before_create :set_age

	def set_age
		self.age = Time.current.year - birthday.year
	end
end
