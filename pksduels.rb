#Classes para o jogo
class P1
  attr_reader :p1, :itens, :time_jogador

  def initialize(nome_1, itens, time_jogador)
    @p1 = p1
    @itens = itens
    @time_jogador = time_jogador
  end

  def mochila_de_itens(item)
    @itens << item
  end
end

class P2
  attr_reader :nome, :itens, :time_jogador

  def initialize(nome_2, itens, time_jogador)
    @p2 = p2
    @itens = itens
    @time_jogador = time_jogador
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

class Movimento
  attr_reader :nome, :dano

  def initialize(nome, dano)
    @nome = nome
    @dano = dano
  end
end
# Fim das classes


#Array de Pokemons
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
  Pokemon.new("Onix", "Pedra", 120, 22, 5)
]

time_p1 = [
]



#Começo do Jogo
puts "==========================="
puts "|      ƤօƙҽՏօuƖs          |"
puts "===========================\n\n"
print "(Digite o Nome do Primeiro jogador:)"
p1 = gets.chomp
puts "#{p1}"

print "Digite o Nome do Segundo jogador:"
p2 = gets.chomp
puts "#{p2}"

puts "╠#{p1} X #{p2}╣"


#Escolha de pokemons
puts "\n#{p1} escolha seus pokemons:"
escolha_p1 = gets.chomp.split(',')
escolha_p1.each do |pokemon_nome|
  pokemon = pokemon.find {|p| p.nome == pokemon_nome }
 p1.time_jogador << pokemon if pokemon
end

puts "\nTime de #{p1}: #{p1.time_jogador.map(&:nome).join(', ')}"

