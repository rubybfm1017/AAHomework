# PHASE 2
def convert_to_int(str)
  Integer(str)
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

class CafeError < StandardError
  def message
    "I dont want coffe. You can try again."
  end
end

class OtherError < StandardError
  def message
    "That doesn't look like a fruit."
  end
end


def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee"

    raise CafeError
  else
    raise OtherError
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  
    maybe_fruit = gets.chomp
  begin
    reaction(maybe_fruit)
  rescue CafeError => e
    p e.message
    retry
  rescue OtherError => e
    p e.message
  
  end
     
  
    
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime

    if name.empty?
      raise ArgumentError.new("'name' cannot be blank")
      
    end

    if yrs_known < 5
      raise ArgumentError.new("too small")
    end

    if fav_pastime.empty?
      raise ArgumentError.new("empty!")

    end
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


