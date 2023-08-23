#Função para reproduzir a música em segundo plano
def play_music(music_file_path)
  fork do
    system("mpg123", "-q", "-o", "alsa", music_file_path)
  end
 end

#Caminho para o arquivo de música
music_file_path = "./assets/pokesouls.mp3"

# Inicia a reprodução da música em segundo plano
play_music(music_file_path)

#Fonte Grande para titulos
titulo = "\e[30;48;5;235m\e[2J\e[H\e[3J\e[8;40;160t\e[5;90;140t\e[1;130t\e[23;58;170t\e[28;38;175t\e[17;50;200t\e[16;100;200t\e[21;100;220t\e[23;110;240t\e[24;150;250t\e[25;170;250t\e[26;200;255t\e[28;230;255t\e[30;255;255t\e[31;255;240t\e[32;255;230t\e[33;255;215t\e[34;255;200t\e[35;255;180t\e[36;255;160t\e[37;255;130t\e[38;255;100t\e[39;255;70t\e[40;255;40t\e[41;255;10t\e[42;240;0t\e[43;220;0t\e[44;200;0t\e[45;180;0t\e[46;160;0t\e[47;140;0t\e[48;120;0t\e[49;100;0t\e[0m"

# Classe Jogador
class Jogador
  attr_reader :nome, :time_jogador

  def initialize(nome, time)
    @nome = nome
    @time_jogador = time_jogador
    time_jogador = [pokemon_inicial]
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
    puts "============================"
    puts "|Qual Pokémon você escolhe?|"
    puts "============================"
    puts "|1. Bulbasaur              |"
    puts "|2. Charmander             |"
    puts "|3. Squirtle               |"
    puts "|4. Pikachu                |"
    puts "==========================="
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



#Classe de inicio do jogo

class PokesoulsGame
  def initialize
    @pokebolas = 3
    chance_fugir = 0.4
    @pokemons_capturados = []
    @pokemon_inicial = EscolherPokemon.escolherInicial
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

 # Função de captura de Pokemons

 def capturar_pokemon(pokemons_cadastrados, pokemons_capturados, pokebolas, chance_fugir)
    system("clear") || system("cls")

    while pokebolas > 0
      puts "Você encontrou um Pokémon selvagem!"
      puts "Pressione Enter para tentar capturá-lo..."
      gets.chomp

      if rand <= chance_fugir
        puts "O Pokémon fugiu!"
      else
        id_pokemon = rand(5..19)
        pokemon_aleatorio = pokemons_cadastrados.values.sample

        if pokemon_aleatorio
          pokemons_capturados << pokemon_aleatorio
          pokebolas -= 1
          puts "Você capturou um #{pokemon_aleatorio.nome_pokemon}!"
          puts "Você ainda tem #{pokebolas} Pokébolas restantes."
        else
          puts "Nenhum Pokémon encontrado com o ID #{id_pokemon}."
          system("clear") || system("cls")
        end
      end
    end

    puts "Você não tem mais Pokébolas!"
  end

    #Inicio da história

    puts "==========================="
    puts "|  \e[31mƤօƙҽՏօuƖs\e[0m              |"
    puts "===========================\n\n"



    puts "\e[35m (Ancião)\e[0m ~ \e[33m \e[3mEm verdade vos digo, quem sois vós, senhor?\e[0m\e[0m\n\n"
    print "\e[34m(Digite seu Nome nobre viajante:)\e[0m\n\n"
    nome = gets.chomp

    #Escolha o Pokemon

    puts " \n\e[35m(Ancião)\e[0m ~ \e[3m\e[33mAh... meu bom \e[35m#{nome}\e[0m\e[33m, \e[3mcompreenda que é uma tarefa árdua encontrar alguém nestas paragens.\n Desde o último ataque do Rei Giovanni, sobreviver tem se tornado uma empreitada difícil.\n Inúmeros embates contra os infames caçadores da Equipe Rocket e Pokémon agressivos têm assolado nossa jornada.\n Portanto, rogo que não vagueie desprotegido por essas terras.\n Venha, escolhamos um Pokémon!\e[0m\e[0m\n\n"

    pokemon_inicial = EscolherPokemon.escolherInicial
    system("clear") || system("cls")

    puts "==========================="
    puts "\e[32mVocê escolheu #{pokemon_inicial.checar_pokedex}!\e[0m"
    puts "==========================="



    # Menu Do PokeSouls

    loop do
      puts "==========================="
      puts "|  \e[31mƤօƙҽՏօuƖs\e[0m              |"
      puts "==========================="
      puts "|1. Progredir na história |"
      puts "|2. Capturar Pokémon      |"
      puts "|3. Ver história          |"
      puts "|4. Meu time              |"
      puts "|5. Sair                  |"
      puts "==========================="
      escolha = gets.chomp.to_i

    # Iicio do case de Menu

      case escolha

    #Modo História

      when 1
        historia_parte_um

    #Capturar Pokemons

      when 2
        capturar_pokemon(pokemons_cadastrados, pokemons_capturados, pokebolas, chance_fugir)

    #História do Pokesouls

    when 3
      system("clear") || system("cls")
      puts  "=========================================================================================="
      puts  "História de ƤօƙҽՏօuƖs"
      puts  "=========================================================================================="
      puts "\n\e[35m(Ancião)\e[0m ~ \e[33m\e[3mNesses tempos antigos, a região de Kanto estava mergulhada em escuridão devido aos ataques dos Caçadores Rocket, servos leais do temível Rei Giovanni.\e[0m\e[0m\n\n"
      print "\e[34m(Pressione Enter para Continuar a História)\e[0m\e[0m"
      gets.chomp

      puts "\n\e[35m(Ancião)\e[0m ~ \e[33m\e[3m Com cidades outrora pacíficas estavam sob constante ameaça, assoladas por pokémons corrompidos e monstros agressivos.\e[0m\e[0m\n"
      print "\e[34m(Pressione Enter para Continuar a História) \e[0m\n"
      gets.chomp


      puts "\n\e[35m(Ancião)\e[0m ~ \e[33m\e[3mNo meio desse caos, um único treinador, munido de coragem e determinação, encontrou um parceiro improvável -\n um único Pokémon disposto a lutar por sua causa, um .\e[0m\e[0m\n"
      print "\e[34m(Pressione Enter para Continuar a História)\e[0m\n"
      gets.chomp

      puts "\n\e[35m(Ancião)\e[0m ~ \e[33m\e[3mJuntos, eles começaram a desafiar os Caçadores Rocket, buscando unir outros treinadores e pokémons resistentes que compartilhavam sua vontade de desafiar o regime de Giovanni.\e[0m\n"
      print "\e[34m(Pressione Enter para Continuar a História)\e[0m\n"
      gets.chomp

      puts "\n\e[35m(Ancião)\e[0m ~ \e[33m\e[3mAgora me entende \e[35m#{nome}?\e[0m\e[0m\n\n"
      print "\e[34m(Pressione Enter para Responder ao Ancião)\e[0m\n"
      gets.chomp

      puts  "\e[35m(#{nome})\e[0m ~ \e[33m\e[3mSim, Compreendo..... preciso fazer isso.......\e[33m\e[3m\e[0m\n"
      puts  "==========================================================================================\n\n\n"


    when 4
      mostrar_pokemons_capturados(pokemon_inicial, pokemons_capturados)
      puts "Pressione Enter para continuar..."
      gets.chomp
    when 5
      puts "\e[35m(Ancião)\e[0m ~ \e[33m \e[3mChegou a hora de nos separarmos, mas apenas temporariamente. Que nossos caminhos se cruzem novamente em breve, e que vossas jornadas sejam seguras e prósperas. Até que nos encontremos novamente\e[0m \e[35m#{nome}.\e[0m\e[0m\n"
      break
    else
      puts "Opção inválida! Escolha de 1 a 5."
    end
  end

#array de pokemons capturados

   pokemons_capturados = []

# Visualização de pokemons capturados

  def mostrar_pokemons_capturados(pokemon_inicial, pokemons_capturados)
    puts "Pokémons capturados:"

    if pokemons_capturados.empty?
      puts "Você ainda não capturou nenhum Pokémon."
    else
      puts "Inicial: #{pokemon_inicial.nome_pokemon} (Tipo: #{pokemon_inicial.tipo}, HP: #{pokemon_inicial.hp})"

      pokemons_capturados.each do |pokemon|
        puts "#{pokemon.nome_pokemon} (Tipo: #{pokemon.tipo}, HP: #{pokemon.hp})"
      end
    end
  end


  # Inicialização do jogo
game = PokesoulsGame.new
game.run
