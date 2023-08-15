# Arquivo para o jogador
class Player
   attr_reader :nome, :itens, :time_jogador
   def initialize(nome, itens,time_jogador)
     @nome = nome
     @items = itens
     @time_jogador = time_jogador
   end

   def mochila_de_itens(itens)
     @itens << itens
 end
end
