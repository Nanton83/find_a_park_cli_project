#CLI CONTROLLER

class FindAPark::CLI

  def call
    puts "Welcome to Park Finder!"
    lists_state
    user_selection
  end

  def lists_state
    puts "We will show parks by state."
    puts "States go here"
  end

  def user_selection
    puts "Please choose the state that interests you."
  end

end
