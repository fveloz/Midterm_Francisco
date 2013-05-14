#File containing the ActorData class(remote data)
require_relative 'lib/actors_data'

def message(hello)
	puts hello
end
#takes user input which it then replaces all the spaces with "+"
def get_title(question)
	puts question
	@user_input = gets.chomp.tr(' ','+')
end
#calls on the class ActorData 
def get_movie
	ActorData.gets(@user_input)
end

def nice_day(bye)
	puts bye
end

def menu
	message("What would you like to do:")
	message ("1. Look up the stars of a particular movie?")
	message ("2. Or just exit.")
end

def get_choice
  gets.to_i
end

message("Welcome to 'Who Starred in It!' where you can look up the stars of your favorite movies!")
menu
loop do 
choice = get_choice
if choice ==1
	get_title "So what movie would you like to look up:"
	get_movie
	menu
elsif choice == 2
	break
else
	message "No bueno dude, that's not an option"
	menu
end
end

nice_day("Bye Bye I hope you enjoy you're stars")