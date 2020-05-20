require 'pry'
class Show < ActiveRecord::Base

    def self.highest_rating
       Show.maximum("rating")
    #    binding.pry
    end

    def self.most_popular_show
        # Show.maximum("rating")
        # Show.where("first_name LIKE '%#{params[:first_name]}%'")
        var = Show.where(rating: highest_rating )
        var.first
        # binding.pry
    end

    def self.lowest_rating
        Show.minimum("rating")
    end

    def self.least_popular_show
        var = Show.where(rating: lowest_rating)
        var.first
    end

    def self.ratings_sum
        # Client.sum("orders_count")
        Show.sum("rating")
    end

    def self.popular_shows
        Show.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        Show.order(:name)
    end

end

