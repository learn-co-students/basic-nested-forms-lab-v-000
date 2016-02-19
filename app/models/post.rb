class Post < ActiveRecord::Base
	has_one :author
	
	def author_name=(name)
		author = Author.find_by(name: name)
		self.author = author
	end

	def author_name
		unless self.author.nil?
			self.author
		end
	end

end
