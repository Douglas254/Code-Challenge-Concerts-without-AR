class Band
    attr_accessor :name
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
        concert.all.filter{|concert| concert.band==self}
    end

    def venues
        self.concerts.map{|concert| concert.venue}
    end
end