module Wait
    def waiting
        puts "I'll wait till you come back"
    end
end

class Hello
    def greet
        puts 'Hi hooman!'
    end
end

class Dog < Hello
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
        waiting
    end
end

class Cat < Hello
    attr_accessor :name, :age
    def initialize(name,age)
        self.name = name
        self.age = age
    end

    def introduce
        puts "I'm #{self.name} and I'm #{self.age} years in people years"
    end
end

barbie = Dog.new('Barbie','Azkal',4)
pogi = Cat.new('Pogi',3)

pogi.introduce
barbie.wait