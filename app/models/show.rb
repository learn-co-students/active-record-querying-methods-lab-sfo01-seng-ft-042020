class Show < ActiveRecord::Base

# returns the highest value in the ratings column
def Show.highest_rating
    self.maximum("rating")
end

# returns the show with the highest rating
def Show.most_popular_show
    self.where("rating = ?", self.highest_rating).first
end

# returns the lowest value in the ratings column
def Show.lowest_rating
    self.minimum("rating")
end

# returns the show with the lowest rating
def Show.least_popular_show
    self.where("rating = ?", self.lowest_rating).first
end

# returns the sum of all of the ratings
def Show.ratings_sum
    self.sum(:rating)
end

# returns an array of all of the shows that have a rating greater than 5
def Show.popular_shows
    self.where("rating > 5")
end

# returns an array of all of the shows sorted in alphabetical order according to their names
def Show.shows_by_alphabetical_order
    self.order(:name)
end

end