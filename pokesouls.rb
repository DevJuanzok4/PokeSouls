class Jogador
  # ... (mesmo conteúdo)
end

class RecrutaEquipeRocket
  attr_reader :nome_oponente, :team

  def initialize(nome_oponente, team)
    @nome_oponente = nome_oponente
    @team = team
  end
end

class Oponente
  attr_reader :nome_oponente, :team

  def initialize(nome_oponente, team)
    @nome_oponente = nome_oponente
    @team = team
  end
end

class Pokemon
  # ... (mesmo conteúdo)
end

# Criando instâncias de Pokémon (mesmo conteúdo)

print "AHM! que? quem é você?"
nome = gets.chomp
puts "Ah... meu bom #{nome}, compreenda que é uma tarefa árdua encontrar alguém nestas paragens. Desde o último ataque do Rei Giovanni, sobreviver tem se tornado uma empreitada difícil. Inúmeros embates contra os infames caçadores da Equipe Rocket e Pokémon agressivos têm assolado nossa jornada. Portanto, rogo que não vagueie desprotegido por essas terras. Venha, escolhamos um Pokémon!"

class EscolherPokemon
  def self.escolherInicial
    puts "Qual Pókemon você escolhe?"
    puts "1. Bulbasaur"
    puts "2. Charmander"
    puts "3. Squirtle"
    puts "4. Pikachu"

    escolha = gets.chomp.to_i

    case escolha
    when 1
      return Pokemon.new("Bulbasaur", 150, 15, "Planta")
    when 2
      return Pokemon.new("Charmander", 90, 30, "Fogo")
    when 3
      return Pokemon.new("Squirtle", 120, 20, "Água")
    when 4
      return Pokemon.new("Pikachu", 95, 40, "Elétrico")
    else
      puts "Opção inválida! Escolha de 1 a 4."
      EscolherPokemon.escolherInicial
    end
  end
end

pokemon_inicial = EscolherPokemon.escolherInicial
puts pokemon_inicial.checar_pokedex
puts "Eu escolho você!"
