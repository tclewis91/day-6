puts "What is your name?"
name=gets.chomp
print "Where were you born (city, state)?"
born=gets.chomp
print "How old are you?"
age=gets.chomp
print "What is your username?"
user_name=gets.chomp
print "What is your favorite food?"
food1=gets.chomp
print "Do you like to eat anything with that?"
food2=gets.chomp
puts "What are three other foods that you like to eat?"
food3=gets.chomp
food4=gets.chomp
food5=gets.chomp
food=[food3, food4,food5]
print "So, you're name is #{name}; you're user_name is #{user_name}. You were born in #{born}.
Your favorite food is #{food1} and you like to eat it with #{food2}. However, you also really like to eat #{food}."
