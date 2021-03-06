class Team < ApplicationRecord
    belongs_to :user
    has_many :players

    def full_name
        self.city + " " + self.name
    end

    def self.by_division(conf, div)
        self.all.where(conference: conf, division: div)
    end

    def self.exclude_fa
        self.all.where.not(id: 0)
    end

end
