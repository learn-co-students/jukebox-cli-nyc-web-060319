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

def help
  message = "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
puts message
end

def play(songs)
puts "Please enter the song number or name: "
input = gets.chomp
if songs.include?(input)
    puts "Playing #{input}"
  elsif (1..9).to_a.include?(input.to_i)
    puts "Playing #{songs[input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, index|
      puts "#{index + 1}. #{song}"
    end
end

def exit_jukebox
puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  loop do
    input = gets.downcase.chomp
    if input == "exit"
      exit_jukebox
      break
    elsif input == "help"
      help
    elsif input == "play"
      play
    elsif input == "list"
      list
    else
      help
    end
  end
end
