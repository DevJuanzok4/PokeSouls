# Requisições para as classes
require_relative 'lib/personagens/player'
require_relative 'lib/personagens/pokemon'
require_relative 'lib/personagens/treinadores'
require_relative 'lib/personagens/chefes'



# Exemplo de criação de personagens para testar
player = Player.new("Nome do Jogador")
pokemon = Pokemon.new("Pikachu", 10)
trainer = Trainer.new("Treinador")
boss = Boss.new("Chefe")

puts "Bem-vindo ao jogo!"
puts "Jogador: #{Player.nome}"
puts "Pokémon: #{Pokemon.nome}, Nível #{pokemon.level}"
puts "Treinador: #{Treinador.nome}"
puts "Chefe: #{Chefes.nome}"
