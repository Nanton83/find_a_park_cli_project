#CLI CONTROLLER

class FindAPark::CLI

  def call
    puts "Welcome to Park Finder!"
    lists_states
    user_selection
    bye
  end

  def lists_states
    puts "We will show parks by state."
  end

  def user_selection
    input = nil
    while input != "exit"
      puts "Please enter the number of the state to get more info, 'states' to see the list again or type 'exit' to quit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "Parks within that particular state"
      when "2"
        puts "Parks within that other particular state"
      when "states"
        lists_states
      else
        puts "Didn't quite unstand that"
      end
    end
  end

  def bye
    puts "Please visit us again to learn more about your national parks"
    puts "Goodbye"
  end

end
