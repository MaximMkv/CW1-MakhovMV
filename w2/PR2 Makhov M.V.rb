def generating(length)
    characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*'
    password = ''
    
    length.times do
      password << characters[rand(characters.length)]
    end
    
    password
  end
  

  def main
  print "Please enter lenght of a password: "
  pwLenght = gets().to_i
  
  if pwLenght > 0
    password = generating(pwLenght)
    puts "Generated password: #{password}"
  else
    puts "You enter wrong length of the password. It must be bigger than 0"
  end
end

main
