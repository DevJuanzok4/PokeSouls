# Arquivo para o jogador
class Player
   attr_reader :nome, :items, :time_jogador
   def initialize(nome, items,time_jogador)
     @nome = nome
     @items = items
     @time_jogador = time_jogador
   end
end
