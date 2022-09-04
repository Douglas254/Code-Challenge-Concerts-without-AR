class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    # return all concerts belonging to the venue 
    def concerts
        Concert.all.filter{|concert| concert.venue==self}
    end

    def bands 
        self.concerts.map{|concert| concert.band}
    end
end