class Player_1
  attr_reader :nome_1, :itens, :time_jogador

  def initialize(nome_1, itens, time_jogador)
    @nome_1 = nome_1
    @itens = itens
    @time_jogador = time_jogador
  end

  def mochila_de_itens(item)
    @itens << item
  end
end

class Player_2
  attr_reader :nome, :itens, :time_jogador

  def initialize(nome_2, itens, time_jogador)
    @nome_2 = nome_2
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

def Escolher_pokemon(pokemons,Player_1, Player_2)
  puts "Escolha seu POkemon"
  pokemons.each.with_index do |pokemon,index|
    puts "#{index +1}. #{pokemon.nome}"
end
  print "#{.nome}, escolha um Pokémon (digite o número): "
  escolha = gets.chomp.to_i

  jogador.time_jogador << pokemons_disponiveis[escolha - 1]
end

puts "==========================="
puts "|      ƤօƙҽՏօuƖs          |"
puts "===========================\n\n"
print "Digite o Nome do primeiro jogador:"
nome_1 = gets.chomp
puts "#{nome_1}"

print "Digite o Nome do primeiro jogador:"
nome_2 = gets.chomp
puts "#{nome_2}"
