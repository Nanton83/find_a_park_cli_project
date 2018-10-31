#CLI CONTROLLER

class FindAPark::CLI

  def call
    puts "Welcome to Park Finder!"
    lists_states
    user_selection
    bye
  end

  def self.lists_states
    puts "We will show parks by state."
      states = FindAPark::State.all_the_states_array
      states.each_with_index do |state, idx|
      puts "#{idx + 1}." "#{state}"
    end
  end

  def valid_input?
    input.include?(1..56)
    end

  def self.user_selection
    input = nil
      puts "Please enter the number of the state to get more info, 'states' to see the list again or type 'exit' to quit"
      input = gets.strip.downcase.to_i
        FindAPark::State.all_the_states_array[input - 1]
  end

  def bye
    puts "Please visit us again to learn more about your national parks"
    puts "Goodbye"
  end

end
