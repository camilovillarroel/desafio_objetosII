# 1. Crear una clase carta, con pinta y número.
# 2. Pedir un input al usuario, si el usuario escribe “jugar” generar 5 cartas al azar.
# 3. Si el usuario escribe:
#     1. “mostrar”: Mostrar las 5 cartas en pantalla
#     2. “salir”: Terminar el programa.
#     3. "jugar": (otra vez) Se generan nuevas 5 cartas aleatorias.


class Carta

    @pinta
    @numero

    attr_accessor :pinta, :numero


    def initialize 

        @pinta = ['corazon', 'trebol', 'pica', 'diamante'].sample
        @numero = [1,2,3,4,5,6,7,8,9,10,11,12,13].sample

    end
end

def azar

    cartas = [Carta.new, Carta.new, Carta.new, Carta.new, Carta.new ]

end

input ='x'
while (input != 'salir')do 
puts 'ingrese jugar para jugar'

input = gets.chomp

if input == 'jugar'
    
    azar.each_with_index do |carta,index|
        puts "la carta #{index+1} es #{carta.numero} de #{carta.pinta} "
    end
    
    cartas = azar
    resp = gets.chomp

    if resp == 'mostrar' 
        cartas.each_with_index do |carta,index|
        puts "la carta #{index+1} es #{carta.numero} de #{carta.pinta} "
        end
    end
    
    #puts "la carta #{index+1} es #{carta.numero} de #{carta.pinta} "

end
end
