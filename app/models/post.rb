class Post < ActiveRecord::Base
	belongs_to :author

	def author_attributes=(author)
		self.author = Author.find_or_create_by(name: author[:name])
		require 'pry'
		binding.pry
		self.author.update(author)
	end
end
