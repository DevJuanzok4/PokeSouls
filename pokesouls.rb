class Jogador
  attr_reader :nome, :time

  def initialize(nome, time)
    @nome = nome
    @time = time
  end
end

class RecrutaEquipeRocket
  attr_reader :nome_oponente, :team

  def initialize(RecrutaEquipeRocket, team)
    @RecrutaEquipeRocket = RecrutaEquipeRocket
    @team = team
  end


class Oponente
  attr_reader :nome_oponente, :team

  def initialize(nome_oponente, team)
    @nome_oponente = nome_oponente
    @team = team
  end


class Oponente
  attr_reader :nome_oponente, :team

  def initialize(nome_oponente, team)
    @nome_oponente = nome_oponente
    @team = team
  end
end

class Pokemon
  attr_reader :nome_pokemon, :hp, :dano, :tipo

  def initialize(nome_pokemon, hp, dano, tipo)
    @nome_pokemon = nome_pokemon
    @hp = hp.to_i
    @dano = dano.to_i
    @tipo = tipo
  end

  def atacando(dano)
    @hp -= dano
    @hp = 0 if @hp < 0
  end

  def checar_pokedex
    "#{nome_pokemon} (Type: #{tipo}, HP: #{hp}"
  end
end

# Criando instâncias de Pokémon
pikachu = Pokemon.new("Pikachu", "95", "40", "Elétrico")
charmander = Pokemon.new("Charmander", "90", "30", "Fogo")
bulbasaur = Pokemon.new("Bulbasaur", "150", "15", "Planta")
squirtle = Pokemon.new("Squirtle", "120", "20", "Água")

# Equipe Rocket

# Bobo da corte
torchic = Pokemon.new("Torchic", "50", "30", "Fogo")
raltz = Pokemon.new("Raltz", "60", "35", "Fada")
lapras = Pokemon.new("Lapras", "200", "80", "água")

# Bruxa Sierra
geodude = Pokemon.new("Geodude", "70", "30", "Pedra")
gardevoir = Pokemon.new("Gardevoir", "100", "70", "Fada")
gyarados = Pokemon.new("Gyarados", "200", "95", "Dragão")

#  Nobre Arlo
aipom = Pokemon.new("Aipom", "50", "40", "Normal")
alakazam = Pokemon.new("Alakazam", "70", "80", "Psiquico")
snorlax = Pokemon.new("Snorlax", "300", "30", "Normal")

# Ministro da Guerra Cliff
aerodactyl = Pokemon.new("Aerodactyl", "120", "60", "Voador/Dragão")
gallade = Pokemon.new("Gallade", "100", "80", "Lutador")
tyranitar = Pokemon.new("Tyranitar", "250", "110", "Pedra/Dragão")

# Rei GIovanny
persian = Pokemon.new("Persian", "70", "50", "normal")
garchomp = Pokemon.new("Garchomp", "85", "100", "Dragão/Terra")
mewtwo = Pokemon.new("Mewtwo", "500", "150", "Psiquico")


print "AHM! que? quem é você?"
nome = gets.chomp
puts "Ah... meu bom #{nome}, compreenda que é uma tarefa árdua encontrar alguém nestas paragens. Desde o último ataque do Rei Giovanni, sobreviver tem se tornado uma empreitada difícil. Inúmeros embates contra os infames caçadores da Equipe Rocket e Pokémon agressivos têm assolado nossa jornada. Portanto, rogo que não vagueie desprotegido por essas terras. Venha, escolhamos um Pokémon!"
 end
end
class EscolherPokemon
  def self.escolherInicial
    puts "Qual Pókemon vc escolhe?"
    puts "1. Bulbasaur"
    puts "2. Charmander"
    puts "3. Squirtle"
    puts "4. pik... pera oque?"

    escolha = gets.chomp.to_i

    case escolha
      when 1
        return bulbasaur = Pokemon.new("Bulbasaur", "150", "15", "Planta")
      when 2
        return charmander = Pokemon.new("Charmander", "90", "30", "Fogo")
      when 3
        return squirtle = Pokemon.new("Squirtle", "120", "20", "Água")
      when 4
        return pikachu = Pokemon.new("Pikachu", "95", "40", "Elétrico")

      else
        puts "Opção invalida! escolha de 1 a 4."
        EscolherPokemon
      end
    end
  end

pokemon_inicial = EscolherPokemon.escolherInicial
puts pokemon_inicial.checar_pokedex
puts "eu escolho você!"

class Menu
