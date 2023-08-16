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

puts "==========================="
puts "|      ƤօƙҽՏօuƖs          |"
puts "===========================\n\n"
print "Digite o Nome do primeiro jogador:"
nome_1 = gets.chomp
puts "#{nome_1}"

print "Digite o Nome do primeiro jogador:"
nome_2 = gets.chomp
puts "#{nome_2}"
