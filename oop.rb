# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    attr_reader :magic, :name

    def initialize(magic, name)
        @magic = magic
        @name = name
        @color = "silver"
    end

    def say
        puts "*~*My name is #{name} and I can #{magic}!*~*"
    end
end

unicorn1 = Unicorn.new("fly", "Sparkles")
p unicorn1

unicorn2 = Unicorn.new("grant wishes", "Blueberry")
p unicorn2

unicorn1.say
unicorn2.say

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    attr_reader :name, :pet, :thirsty

    def initialize (name, pet = "bat")
        @name = name
        @pet = pet
        @thirsty = true
    end
       
    def drink
        @thirsty = false
    end 
end

vampire1 = Vampire.new("Dracula")
vampire2 = Vampire.new("Louis", "cat")
vampire3 = Vampire.new("Vlad the Impaler")

puts "#{vampire1.name}, are you thirsty?"
puts vampire1.drink


#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    attr_reader :name, :rider, :color

    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
    end

    def eat(times_per_day)
        if times_per_day >= 4 
        @is_hungry = false
        end
    end
end

dragon1 = Dragon.new("Fireball", "Paisley", "red and gold")
puts "#{dragon1.name}, your rider is #{dragon1.rider}. You are a lovely color of #{dragon1.color}. 
Are you hungry? "
puts @is_hungry

dragon2 = Dragon.new("Smokey", "Bob", "green")
puts "#{dragon2.name}, your rider is #{dragon2.rider}. You are a lovely color of #{dragon2.color}. 
Are you hungry?"
puts dragon2.eat(4)

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    attr_reader :name, :disposition, :age, :is_adult, :is_old, :has_ring

        def initialize(name, disposition)
            @name = name
            @disposition = disposition
            @age = 0
            @is_adult = false
            @is_old = false
            @has_ring = false
        end

        def celebrate_birthday
               @age = @age.succ
        end

        def check_adult
            @is_adult = true if @age >= 33
        end

        def check_old
            @is_old = true if @age >= 101 
        end

        def check_ring 
            @has_ring = @name == "Frodo" 
        end

        def change_age(new_age)
            @age = new_age
        end
        
    end

    hobbit1 = Hobbit.new("Frodo", "friendly")
    hobbit1.change_age(110)
    puts hobbit1.check_adult
    puts hobbit1.check_old
    puts hobbit1.check_ring
    puts hobbit1.celebrate_birthday

    hobbit2 = Hobbit.new("Bilbo", "cranky")
    puts hobbit1.check_adult
    puts hobbit1.check_old
    puts hobbit1.check_ring
    puts hobbit2.celebrate_birthday
    puts hobbit2.celebrate_birthday





