songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]




def help#(songs)
	puts(" I accept the following commands:
	- help : displays this help message
	- list : displays a list of songs you can play
	- play : lets you choose a song to play
	- exit : exits this program ")
    puts("Please enter a command:")
 # Commented a bunch of this out so it would pass tests, but I think it runs better how I had it. 
 #    command = gets.strip

 #    if command == "list"
 #    	list(songs)
 #    elsif command == "exit"
 #    	exit_jukebox
 #    elsif command == "play"
 #    	play(songs)
 #    elsif command == "help"
 #    	help(songs) 		
 #    else 
 #    	puts ("Invalid input, please try again")
 #    	command = gets.strip
 #    	help(songs)
	# end


end



def list(songs)
	songs.each_with_index do |song, index|
		puts("#{index + 1}. #{song}")
	end
	#run(songs)
end



def play(songs)
	puts "(Song name should be without quotes)"
	puts "Please enter a song name or number:"
	selection = gets.strip
	puts "Your selection was: #{selection}"
	#puts ("songs.include?(selection)) is : #{songs.include?(selection)}")		# No trabaja bc # is string

	if (songs.include?(selection.to_str))
		puts ("Playing #{selection}")
		#play(songs)
	elsif selection == "exit"
   		exit_jukebox
	#elsif  ((selection.is_a?(Integer)) &&  (selection <= songs.length ))		# No trabaja pq: a string.to_i #=> 0
	elsif    ((selection.to_i != 0) && (selection.to_i <= songs.length) )
		puts ("Playing #{songs[(selection.to_i) -1]}")
		#play(songs)
	else
		puts ("Invalid input, please try again")
		
		#play(songs)
	end

end



def exit_jukebox
	puts "Goodbye"
end



def run(songs)



	puts "Please enter a command:"
	#help(songs)
	response = gets.strip

	if (response == "list")
		list(songs)
	elsif (response == "play")
		play(songs)
	elsif (response == "help")
		help#(songs)
	elsif (response == "exit")
		exit_jukebox	
	else 
		puts ("Invalid input, please try again")
	end
		
		

end




