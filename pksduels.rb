# Classes para o jogo
class Jogador
  attr_reader :nome, :itens, :time_jogador

  def initialize(nome)
    @nome = nome
    @itens = []
    @time_jogador = []
  end

  def mochila_de_itens(item)
    @itens << item
  end
end

class Pokemon
  attr_reader :nome, :tipo_pokemon, :hp, :dano, :level

  def initialize(nome, tipo_pokemon, hp, dano, level)
    @nome = nome
    @tipo_pokemon = tipo_pokemon
    @hp = hp
    @dano = dano
    @level = level
  end
end

# Array de Pokemons
pokemons = [
  Pokemon.new("Pikachu", "Elétrico", 100, 20, 5),
  Pokemon.new("Bulbasaur", "Planta", 120, 18, 5),
  Pokemon.new("Charmander", "Fogo", 110, 22, 5),
  Pokemon.new("Greninja", "Água", 130, 25, 5),
  Pokemon.new("Eevee", "Normal", 90, 15, 5),
  Pokemon.new("Squirtle", "Água", 105, 19, 5),
  Pokemon.new("Jigglypuff", "Fada", 95, 17, 5),
  Pokemon.new("Machop", "Lutador", 115, 21, 5),
  Pokemon.new("Geodude", "Pedra", 110, 20, 5),
  Pokemon.new("Dratini", "Dragão", 100, 23, 5),
  Pokemon.new("Gastly", "Fantasma", 90, 18, 5),
  Pokemon.new("Meowth", "Normal", 95, 16, 5),
  Pokemon.new("Koffing", "Venenoso", 100, 19, 5),
  Pokemon.new("Ditto", "Normal", 80, 14, 5),
  Pokemon.new("Onix", "Pedra", 120, 22, 5),
  Pokemon.new("Squirtle", "Água", 105, 19, 5),
  Pokemon.new("Bulbasaur", "Planta", 120, 18, 5),
  Pokemon.new("Charizard", "Fogo", 130, 24, 5),
  Pokemon.new("Snorlax", "Normal", 150, 28, 5),
  Pokemon.new("Mewtwo", "Psíquico", 160, 30, 5)
  # ... adicione os outros Pokemons aqui
]

# Começo do Jogo
puts "==========================="
puts "|      ƤօƙҽՏօuƖs          |"
puts "===========================\n\n"

print "Digite o Nome do Primeiro jogador:"
nome_p1 = gets.chomp
p1 = Jogador.new(nome_p1)

print "Digite o Nome do Segundo jogador:"
nome_p2 = gets.chomp
p2 = Jogador.new(nome_p2)

puts "╠#{p1.nome} X #{p2.nome}╣"

# Escolha de pokemons
puts "\n#{p1.nome}, escolha seus pokemons (separados por vírgula):"
escolha_p1 = gets.chomp.split(',')
escolha_p1.each do |pokemon_nome|
  pokemon = pokemons.find { |p| p.nome == pokemon_nome }
  p1.time_jogador << pokemon if pokemon
end

puts "\nTime de #{p1.nome}: #{p1.time_jogador.map(&:nome).join(', ')}"
