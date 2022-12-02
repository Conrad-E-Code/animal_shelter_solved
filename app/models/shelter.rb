class Shelter < ActiveRecord::Base
has_many :pets
has_many :adopters, through: :pets

# def pets 
#     self.pets
# end
    # def adopters 
    #     self.adopters 
    # end
    def current_pets
        self.pets.select do |pet|
            pet.adopted? == false
        end
    end
    def adopted_pets
        self.pets.select do |pet|
            pet.adopted? == true
        end
    end
end
