class Article < ApplicationRecord
    has_many :comments
    validates :title, presence: true, length: { minimum: 5 }
    belongs_to :user

   #  def self.search(search)
	  #   if search
	  #     @article = Article.where('title LIKE #{}', search: "%#{params[:search]}%")
	  #   else
	  #     @article = Article.all
	  #   end
  	# end
end
