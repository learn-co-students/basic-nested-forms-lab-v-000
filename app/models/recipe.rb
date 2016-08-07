class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients


  def recipe_title
    self.try(:recipe).try(:title)
  end

  def recipe_title=(title)
     self.recipe = Recipe.find_or_create_by(name: name)
     self.recipe = recipe
  end

  # def genre_name=(name)
  #   genre = Genre.find_or_create_by(name: name)
  #   self.genre = genre
  # end
  #
  # def genre_name
  #   self.try(:genre).try(:name)
  # end
  #
  # def note_contents=(notes)
  #   notes.each do |content|
  #     if content.strip != ''
  #       self.notes.build(content: content)
  #     end
  #   end
  #
  # end
  #
  # def note_contents
  #   self.notes.map(&:content)
  # end

end
