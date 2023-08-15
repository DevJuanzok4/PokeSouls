class Player_1
  attr_reader :nome, :itens, :time_jogador

  def initialize(nome, itens, time_jogador)
    @nome = nome
    @itens = itens
    @time_jogador = time_jogador
  end

  def mochila_de_itens(item)
    @itens << item
  end
end

class Player_2
  attr_reader :nome, :itens, :time_jogador

  def initialize(nome, itens, time_jogador)
    @nome = nome
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
nome = gets.chomp
puts "#{nome}"
