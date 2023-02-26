class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

def leave_review(user, star_rating, comment)
    Review.create(comment: comment, star_rating: star_rating, user_id: user.id, product_id: self.id)
end

def print_all_reviews
    self.reviews.map do |rev|
    puts "Review for #{self.name} by #{rev.user.name}: #{rev.star_rating}. #{rev.comment} "

    end
end

def average_rating
all_ratings= []
Review.all.map{|rev| all_ratings << rev.star_rating}

all_ratings.sum.to_f/all_ratings.count
end
end
