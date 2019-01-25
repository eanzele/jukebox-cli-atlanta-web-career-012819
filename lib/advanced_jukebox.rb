my_songs = {
 "Go Go GO" => '/Users/anzele/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '/Users/anzele/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '/Users/anzele/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '/Users/anzele/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/04.mp3',
 "Wolf" => '/Users/anzele/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/05.mp3',
 "Blue" => '/Users/anzele/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '/Users/anzele/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/07.mp3'
 }

def help
  puts "I accept the following commands
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"

end

def help
def list(my_songs)
my_songs.each {|name, path|
puts "#{name}"}

end


def play(my_songs)
  system 'open <path to audio file'
  puts "Please enter a song name or number:"
  response = gets.chomp
if my_songs.include?(response) == true
  puts "#{response}"
end
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
help
puts "Please enter a command:"
response = gets.chomp

while response != "exit"
  if response == "play"
    play(my_songs)
  elsif response == "list"
    list(my_songs)
  elsif response == "help"
    help
  end
  exit
  break
  end
end
     
65  lib/jukebox.rb
@@ -10,3 +10,68 @@
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"

end



def list(my_songs)
song = 0
while song < my_songs.length
  puts "#{song}. #{my_songs[song]}"
  song += 1
end

end


def play(my_songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
if my_songs.include?(response) == true
  puts "#{response}"
elsif response.to_i <= my_songs.length
  puts "#{my_songs[response.to_i - 1]}"
end
  puts "Invalid input, please try again"
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
help
puts "Please enter a command:"
response = gets.chomp

while response != "exit"
  if response == "play"
    play(my_songs)
  elsif response == "list"
    list(my_songs)
  elsif response == "help"
    help
  end
  exit
  break
  end
end
