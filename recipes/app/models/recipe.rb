
class Recipe < ActiveRecord::Base
  validates :title, :presence => true
  validates :author, :presence => true
  validates :ingredients, :presence => true
  validates :instructions, :presence => true
  has_many :tags, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_attached_file :image, styles: { small: "64x64", med: "200x200", large: "300x300" }
  validates_attachment :image, presence: true,
    content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] },
    size: { in: 0..10.megabytes }

  # def average_rating
  #   # Sum up the corresponding ratings, if any
  #       # @recipe = Recipe.new
  #       # if !@recipe.ratings(:number).nil?
  #       # @recipe.ratings.each do |rating|
  #       # rating.number
  #       # end
  #     if ratings.empty?
  #       0
  #     else
  #       sum = 0.0
  #       ratings.each { |rating| sum += rating.number }
  #       sum/ratings.length
  #     end
  #
  # end

end
