class Dog
    attr_accessor :nameD, :owners, :size, :weight, :gender
    attr_reader :specie
    def initialize(nameD, specie, size, weight)
        @nameO = nameO
        @nameD = nameD
        @owners = []
        @specie = specie
        @size = size
        @weight = weight
        @gender = srand[2]
        @kidFriendly = srand[2]
        
    end
    
    def kidFriendly
      if @kidFriendly == 1 
        @kidFriendly = "KID FRIENDLY!"
      else
        @kidFriendly = "NOT KID FRIENDLY!!!", "Better watch out around kids."
      end
      puts @kidFriendly
      
    end
    
    def gender
      if @gender == 1 
        @gender = "male"
      else
        @gender = "female"
      end
      "Dont forget, #{@nameD} is a #{@gender}"
    end
    
    def dogQualities
        "#{@nameD} is a #{@specie}, who is quite #{@size}, and weighs #{@weight}!"
    end
        
        
    # def ownerAdopt(owner)
    #     @owner = owner
    #     @owners << @owner
    #     owner.adoptAdog << self
    # end
    
end

# roof = Dog.new("roof")
# puts "What is your doggo's name?"
# name, dog = gets.chomp
# puts "What is your doggo's specie?"
# specie = gets.chomp
# puts "What is your doggo's size?"
# size = gets.chomp
# puts "What is your doggo's weight?"
# weight = gets.chomp
# dog = Dog.new("#{name}", "#{specie}", "#{size}", "#{weight}")


puts "What is your name?"
nameO = gets.chomp

puts "What kind of doggo are you looking for?"
sleep(0.7)
puts  "What is your ideal specie?"
specie = gets.chomp
puts "What is your ideal size?"
sleep(0.7)
puts "Small? Big? Large?"
size = gets.chomp

weight = rand(1..30)
weight = "#{weight}lb"

puts "hmmm"
sleep(0.7)
puts "..."
sleep(1.5)
puts "looks like we might have a doggo that fits that description"
sleep(0.7)
puts "Do you have a name in mind while we fetch the #{size} doggo?"
nameD, dog = gets.chomp
dog = Dog.new("#{nameD}", "#{specie}", "#{size}", "#{weight}")
sleep(0.5)
puts "Well allow me #{nameO}, to introduce you to #{nameD}!!!"
puts dog.dogQualities
puts dog.gender

sleep(1)
puts "Do you want to know if your doggo is kid friendly?"
answ1 = gets.chomp.downcase

if answ1 == "yes"
  dog.kidFriendly
else 
  puts "Nevermind then"
end

puts "*You take #{nameD} to your home*"
# 