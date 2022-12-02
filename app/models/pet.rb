class Pet < ActiveRecord::Base
    belongs_to :adopter
    belongs_to :shelter
    def self.highest_age
        Pet.maximum :age 
    end
    def self.oldest
        Pet.find_by "age =?", Pet.highest_age
    end

    def self.average_age
        # ages = Pet.all.map do |pet|
        #     pet.age
        # end
        #  petsum = ages.sum
        #  petcount = ages.count          solution 1 <<<<
        #  avgage = petsum / petcount
        #  avgage
        sum = Pet.sum :age
        count = Pet.count :age     # solution 2 <<<<<
        sum / count
    end
    # def self.average.age
    #     self.all.sum :age / self.all.length
    # end
    def in_dog_years
        if self.species.downcase =="dog"
        self.age * 5
        end
    end
end
