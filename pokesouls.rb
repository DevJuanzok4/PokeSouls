class Jogador
  attr_reader :nome, :time

  def initialize(nome, time)
    @nome = nome
    @time = time
  end
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
  attr_reader :nome_pokemon, :hp, :dano, :tipo

  def initialize(nome_pokemon, hp, dano, tipo)
    @nome_pokemon = nome_pokemon
    @hp = hp.to_i
    @dano = dano.to_i
    @tipo = tipo
  end

  def atacar(outro_pokemon)
    outro_pokemon.levar_dano(@dano)
  end

  def levar_dano(dano)
    @hp -= dano
    @hp = 0 if @hp < 0
  end

  def checar_pokedex
    "#{nome_pokemon} (Tipo: #{tipo}, HP: #{hp})"
  end
end

class EscolherPokemon
  def self.escolherInicial
    puts "Qual Pokémon você escolhe?"
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

# Criando instâncias de Pokémon
pokemons_cadastrados = [
torchic = Pokemon.new("Torchic", 50, 30, "Fogo"),
raltz = Pokemon.new("Raltz", 60, 35, "Fada"),
lapras = Pokemon.new("Lapras", 200, 80, "Água"),

geodude = Pokemon.new("Geodude", 70, 30, "Pedra"),
gardevoir = Pokemon.new("Gardevoir", 100, 70, "Fada"),
gyarados = Pokemon.new("Gyarados", 200, 95, "Dragão"),

aipom = Pokemon.new("Aipom", 50, 40, "Normal"),
alakazam = Pokemon.new("Alakazam", 70, 80, "Psíquico"),
snorlax = Pokemon.new("Snorlax", 300, 30, "Normal"),

aerodactyl = Pokemon.new("Aerodactyl", 120, 60, "Voador/Dragão"),
gallade = Pokemon.new("Gallade", 100, 80, "Lutador"),
tyranitar = Pokemon.new("Tyranitar", 250, 110, "Pedra/Dragão"),

persian = Pokemon.new("Persian", 70, 50, "Normal"),
garchomp = Pokemon.new("Garchomp", 85, 100, "Dragão/Terra"),
mewtwo = Pokemon.new("Mewtwo", 500, 150, "Psíquico")
]

# Captura de pókemons

pokebolas = 6
chance_fugir = 0.5
def capturar_pokemon(pokemons, pokebolas, chance_fugir)
  while pokebolas > 0
    puts "Você encontrou um Pokémon selvagem!"
    puts "Pressione Enter para tentar capturá-lo..."
    gets.chomp

    if rand <= chance_fugir
      puts "O Pokémon fugiu!"
    else
      pokemon_aleatorio = pokemons.sample
      puts "Você capturou um #{pokemon_aleatorio.nome_pokemon}!"
      pokebolas -= 1
      puts "Você ainda tem #{pokebolas} Pokébolas restantes."
    end
  end

  puts "Você não tem mais Pokébolas!"
end

# começo do jogo

print "AHM! Quem é você? "
nome = gets.chomp
puts "Ah... meu bom #{nome}, compreenda que é uma tarefa árdua encontrar alguém nestas paragens. Desde o último ataque do Rei Giovanni, sobreviver tem se tornado uma empreitada difícil. Inúmeros embates contra os infames caçadores da Equipe Rocket e Pokémon agressivos têm assolado nossa jornada. Portanto, rogo que não vagueie desprotegido por essas terras. Venha, escolhamos um Pokémon!"

pokemon_inicial = EscolherPokemon.escolherInicial
puts "Você escolheu #{pokemon_inicial.checar_pokedex}!"

# Menu do PokeSouls

loop do
  puts "1. Progredir na história"
  puts "2. Capturar Pokémon"
  puts "3. Ver história"
  puts "4. Sair"
  escolha = gets.chomp.to_i


# Iicio do case

  case escolha
  when 1
    puts "aaaa"
  when 2
    capturar_pokemon(pokemons_cadastrados, pokebolas, chance_fugir)
  when 3
    puts "Nesses tempos antigos, a região de Kanto estava mergulhada em escuridão devido aos ataques dos Caçadores Rocket, servos leais do temível Rei Giovanni.\n Cidades outrora pacíficas estavam sob constante ameaça, assoladas por pokémons corrompidos e monstros agressivos.\n

    No meio desse caos, um único treinador, munido de coragem e determinação, encontrou um parceiro improvável - um único Pokémon disposto a lutar por sua causa.\n Juntos, eles começaram a desafiar os Caçadores Rocket, buscando unir outros treinadores e pokémons resistentes que compartilhavam sua vontade de desafiar o regime de Giovanni."
  when 4
    puts "Chegou a hora de nos separarmos, mas apenas temporariamente. Que nossos caminhos se cruzem novamente em breve, e que vossas jornadas sejam seguras e prósperas. Até que nos encontremos novamente, " + nome
  else
    puts "Opção inválida! Escolha de 1 a 4."
  end
end
