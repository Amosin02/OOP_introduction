module Wait
    puts "I'll wait for you here"
end

class Dog
    def initialize(name,breed,age)
        @name = name
        @breed = breed
        @age = age
    end

    def introduce
        puts "Hi I'm #{@name} and my breed is a/an #{@breed}. I am currently #{@age} years old"
    end

    def love
        puts "I missed you my favorite person, let's play now! Arf! Arf!"
    end

    include Wait
    def wait 
        Wait
    end
end

barbie = Dog.new('Barbie','Azkal',4)


barbie.wait