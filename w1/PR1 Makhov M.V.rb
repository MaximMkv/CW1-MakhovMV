def nums
    puts "Please enter number separate by spaces:"
    input = gets.chomp
    input.split.map(&:to_i)
  end
  

  def sorting(numbers, order)
    case order
    when 1
      numbers.sort!
    when 2
      numbers.sort! { |a, b| b <=> a }
    else
      puts "You chose wrong option"
      return
    end
    puts "Sorted list: #{numbers.join(', ')}"
  end
  

  def main
  puts "1 - Ascending order\n2 - Descending order"
  print("Please enter the option: ")
  order = gets().to_i
  
  numbers = nums
  sorting(numbers, order)
  end

  main
  