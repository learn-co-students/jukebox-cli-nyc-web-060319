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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  inp = gets.chomp

  if (1..9).include?(inp.to_i)
    puts "Playing #{songs[inp.to_i - 1]}"
  elsif songs.include?(inp)
    puts "Playing #{inp}"
  else
    puts "Invalid input, please try again"
  end
end
   
def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  
  loop do
    inp = gets.chomp
    case inp
    when "list"
      list(songs)
    when "help"
      help
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
      break
    end
  end
end
    




