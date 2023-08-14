music_file_path = "pokesouls.mp3"  # Substitua pelo caminho do seu arquivo de música

puts "Tocando música..."
system("mpg123", "-q", "-o", "alsa", music_file_path)
