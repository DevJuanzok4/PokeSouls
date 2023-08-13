# Classe Jogador
class Jogador
  attr_reader :nome, :time_jogador

  def initialize(nome, time)
    @nome = nome
    @time_jogador = time_jogador
  end
end


# Classe de Recrutas
class RecrutaEquipeRocket
  attr_reader :nome_oponente, :team

  def initialize(nome_oponente, team)
    @nome_oponente = nome_oponente
    @team = team
  end
end

# Classe de Oponentes
class Oponente
  attr_reader :nome_oponente, :team

  def initialize(nome_oponente, team)
    @nome_oponente = nome_oponente
    @team = team
  end
end

# Classe Pokemon
class Pokemon
  attr_reader :nome_pokemon, :hp, :dano, :tipo, :id_pokemon

  def initialize(nome_pokemon, hp, dano, tipo,id_pokemon)
    @nome_pokemon = nome_pokemon
    @hp = hp.to_i
    @dano = dano.to_i
    @tipo = tipo
    @id_pokemon = id_pokemon.to_i
  end

#função de atacar
  def atacar(outro_pokemon)
    outro_pokemon.levar_dano(@dano)
  end

#função de dano

  def levar_dano(dano)
    @hp -= dano
    @hp = 0 if @hp < 0
  end

#função de visualizar pokemon

  def checar_pokedex
    "#{nome_pokemon} (Tipo: #{tipo}, HP: #{hp})"
  end
end

# Escolha do pokemon inicial
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
      return Pokemon.new("Bulbasaur", 150, 15, "Planta", 1)
    when 2
      return Pokemon.new("Charmander", 90, 30, "Fogo", 2)
    when 3
      return Pokemon.new("Squirtle", 120, 20, "Água", 3)
    when 4
      return Pokemon.new("Pikachu", 95, 40, "Elétrico", 4)
    else
      puts "Opção inválida! Escolha de 1 a 4."
      EscolherPokemon.escolherInicial
    end
  end
end


# Hash de Pokémons cadastrados para os bosses e para capturas

  pokemons_cadastrados = {
    5 => Pokemon.new("Torchic", 50, 30, "Fogo",5),
    6 => Pokemon.new("Raltz", 60, 35, "Fada",6),
    7 => Pokemon.new("Lapras", 200, 80, "Água,",7),
    8 => Pokemon.new("Geodude", 70, 30, "Pedra",8),
    9 => Pokemon.new("Gardevoir", 100, 70, "Fada",9),
    10 => Pokemon.new("Gyarados", 200, 95, "Dragão",10),
    11 => Pokemon.new("Aipom", 50, 40, "Normal",11),
    12 => Pokemon.new("Alakazam", 70, 80, "Psíquico",12),
    13 => Pokemon.new("Snorlax", 300, 30, "Normal",13),
    14 => Pokemon.new("Aerodactyl", 120, 60, "Voador/Dragão",14),
    15 => Pokemon.new("Gallade", 100, 80, "Lutador",15),
    16 => Pokemon.new("Tyranitar", 250, 110, "Pedra/Dragão",16),
    17 => Pokemon.new("Persian", 70, 50, "Normal",17),
    18 => Pokemon.new("Garchomp", 85, 100, "Dragão/Terra",18),
    19 => Pokemon.new("Mewtwo", 500, 150, "Psíquico",19)
  }

def capturar_pokemon(pokemons_cadastrados, pokebolas, chance_fugir)
  capturados = []

  while pokebolas > 0
    puts "Você encontrou um Pokémon selvagem!"
    puts "Pressione Enter para tentar capturá-lo..."
    gets.chomp

    if rand <= chance_fugir
      puts "O Pokémon fugiu!"
    else
      id_pokemon = rand(5..19)
      pokemon_aleatorio = pokemons_cadastrados.values.find { |pokemon| puts pokemon }

      if pokemon_aleatorio
        capturados << pokemon_aleatorio
        pokebolas -= 1
        puts "Você capturou um #{pokemon_aleatorio.nome_pokemon}!"
        puts "Você ainda tem #{pokebolas} Pokébolas restantes."
      else
        puts "Nenhum Pokémon encontrado com o ID #{id_pokemon}."
      end
    end
  end

  puts "Você não tem mais Pokébolas!"
  puts "Pokémons capturados:"
  capturados.each do |pokemon|
    puts "#{pokemon.nome_pokemon} (Tipo: #{pokemon.tipo}, HP: #{pokemon.hp})"
  end
end


#Variaveis de captura de pokemons
pokebolas = 6
chance_fugir = 0.5


# começo do jogo
print "\e[33m Ancião ~ Em verdade vos digo, quem sois vós, senhor?\e[0m\n Digite seu Nome nobre viajante:"
nome = gets.chomp

puts "\e[33m Ancião ~ Ah... meu bom #{nome}, compreenda que é uma tarefa árdua encontrar alguém nestas paragens. Desde o último ataque do Rei Giovanni, sobreviver tem se tornado uma empreitada difícil. Inúmeros embates contra os infames caçadores da Equipe Rocket e Pokémon agressivos têm assolado nossa jornada. Portanto, rogo que não vagueie desprotegido por essas terras. Venha, escolhamos um Pokémon!\e[0m\n"

pokemon_inicial = EscolherPokemon.escolherInicial
puts "Você escolheu #{pokemon_inicial.checar_pokedex}!"

# Menu do PokeSouls
loop do
  puts "1. Progredir na história"
  puts "2. Capturar Pokémon"
  puts "3. Ver história"
  puts "4. Meu time"
  puts "5. Sair"
  escolha = gets.chomp.to_i

# Pókemos capturados
capturados = []

# Visualização de pokemons capturados
def mostrar_pokemons_capturados(capturados)
  if capturados.empty?
    puts "Você ainda não capturou nenhum Pokémon."
    puts "Somente está com o puts #{pokemon_inicial.nome_pokemon} (Tipo: #{pokemon.tipo}, HP: #{pokemon.hp} )"
  else
    puts "Pokémons capturados:"
    capturados.each do |pokemon|
      puts "#{pokemon_aleatorio.nome_pokemon} (Tipo: #{pokemon.tipo}, HP: #{pokemon.hp})"
      puts "#{pokemon_inicial.nome_pokemon} (Tipo: #{pokemon.tipo}, HP: #{pokemon.hp} )"
    end
  end
end


# Iicio do case de Menu
  case escolha
  when 1
    puts "aaaa"
  when 2
    capturar_pokemon(pokemons_cadastrados, pokebolas, chance_fugir)
  when 3
    puts "Nesses tempos antigos, a região de Kanto estava mergulhada em escuridão devido aos ataques dos Caçadores Rocket, servos leais do temível Rei Giovanni.\n Cidades outrora pacíficas estavam sob constante ameaça, assoladas por pokémons corrompidos e monstros agressivos.\n
    No meio desse caos, um único treinador, munido de coragem e determinação, encontrou um parceiro improvável - um único Pokémon disposto a lutar por sua causa.\n Juntos, eles começaram a desafiar os Caçadores Rocket, buscando unir outros treinadores e pokémons resistentes que compartilhavam sua vontade de desafiar o regime de Giovanni."
  when 4

      puts "Pokémons capturados:"
      mostrar_pokemons_capturados(capturados)
  when 5
    puts "Chegou a hora de nos separarmos, mas apenas temporariamente. Que nossos caminhos se cruzem novamente em breve, e que vossas jornadas sejam seguras e prósperas. Até que nos encontremos novamente,"  + nome
  else
    puts "Opção inválida! Escolha de 1 a 5."
  end
end
