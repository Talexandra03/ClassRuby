#Variables
#nombre_usuario="tata"
#puts nombre_usuario
#edad=26
#puts edad +5
#puts 10/3 #Enteros
#puts 10.0/3.0 #Decimales

#Convercion de numeros
#puts 10.to_f/3.to_f

#Concatenar
#puts "Hola" + nombre_usuario

#interpolacion
# representar codigo de ruby en cadenas de texto (creo)
#puts "Hola #{nombre_usuario}, Bienvenid@."

#Caracter  de escabe \..\
#puts "Hola #{nombre_usuario},\"Bienvenid@.\""

#obtener datos dentros de la termi
#numero_uno = gets.chomp.to_f
#puts "ingresa otro numero"
#numero_dos = gets.chomp.to_f
#puts "el número ingresado fue #{numero_uno}. Gracias"
#puts "La suma de e estos numeros es #{numero_uno+numero_dos}"

#if numero_uno>numero_dos
#puts "el número_uno es mayor que el número_dos"
#elsif numero_uno==numero_dos
#    puts "los números son iguales"
#    puts "los números son iguales"
#    puts "los números son iguales"
#else
#    puts "el número dos es mayor que el número uno"
#end

#case
# puts "ingresar  la calificación: "
 #calificación= gets.chomp.to_f
 #case calificación
  #  when 5
   #     puts "Excelente"
    #    when 4
     #       puts "Sobresaliente"
      #      when 3
        #        puts "Aceptable"
         #       when 2
          #          puts "Insuficiente"
           #         when 1,0
            #            puts "Deficiente"
             #       else
              #          puts "nota no valida, ingrese una nota del 1 al 5"
               #     end
#ARREGLOS
#frutas=['Manzana','Pera','Uva']
#puts frutas[2]


#iterar arreglos

#frutas=['Manzana','Pera','Uva','Anon', 'Durazno']
#frutas.each do |fruta|
#    puts fruta
#end
#puts frutas.sort.join(', ') #ordena alfabetica
#puts frutas.include? ('Durazno') #BUSCAR ELEMENTO

#Rangos
#(1..6).each do |numero|
#puts "el número vale #{numero}"
#end

#while
#i=0
#while i<=10
#puts "i vale #{i}"
#i++;
#i=i+1;
#end

#do while
#i=0
#begin 
 #   puts "i vale #{i}"
  #  i=i+1;
   # end while i<=10
=begin #comienzacomentario
5.times do
puts "Hola"
end

5.upto(10) do |valor|
    puts valor
end

10.downto(5) do 
    |valor|
    puts valor
end
=end #Finalizacomentario

#Hashes
#persona = {"nombre"=> "juan", "edad" => 24}
#puts persona ["edad"]

#persona.each do |clave,valor|
#   puts "La clave es #{clave} y el valor es #{valor}"
#end
#Cuenta la catidad de pociciones en un has
#puts persona.length 
#puts persona.has_key?("edad")#indica si existe una llave dentrop de un hash
#puts persona.keys

#SIMBOLOS (Cadena de tex inmutables para definir usar ':')
#persona = {nombre:"juan", edad:26}
#puts persona[:nombre]

#Métodos 
#def cuadrado(numero)
 #   return numero*numero
#end
#puts "ingresa un número:"
#mi_numero:gets.chomp.to_f
#puts "el cuadrado es: #{cuadrado(mi_numero)}"

#def hola_personas(*personas)
  #personas.each do |persona|
 #   puts "Hola #{persona}"
 #   end
  #end

  #gente = ['Jaime', 'Alberto', 'Pedro']
 # hola_personas(*gente)
  #El operador Splat convierte todos los parametros q enviemos en un arreglo dentro de un metodo
#def suma (num1:0, num2:0)
 #   return num1+num2
   # end
#puts suma(num2:4,)
    #tambien permiten inicializar valores, este valor inicial, el metodo lo utiliza si no especificamos este parametro
    
#Clases y objetos   
class Persona
    #definir atrubito attr_accessor
    attr_accessor :nombre,:edad
    
      def initialize (n,e)#Método initialize
        self.nombre=n
        self.edad =e
       end

    def saludar
       puts "Hola"
    end
    #Herencia
    class Alumno < Persona
        attr_accessor :codigo
        def estudiar
                    puts "Estoy estudiando"
        end
    def saludar 
        super #va a ejecutar el método  saludar de la clase padre
        puts "profe"
    end
end

#instancias
#persona_uno=Persona.new("juan", 50)
#persona_dos= Persona.new('maria', 25)
#persona_uno.nombre='Juan'
#persona_dos.nombre="Maria"
#persona_dos.saludar
#puts persona_uno.nombre
#puts "La edad de la persona es#{persona_uno.edad}"

alumno_uno = Alumno.new("Jaimito", 17)
alumno_uno.estudiar
