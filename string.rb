puts "Ingrese su nombre"
nombre = gets.chomp
#Imprime el nombre ingresado
puts "Nombre => "+ nombre
# convierte al revés el nombre
puts "Método reverse => " + nombre.reverse
#Mayúscula
puts "Método upcase => " + nombre.upcase
#Minúscula
puts "Método downcase => " + nombre.downcase
#Intercambia las minúsculas por mayúscula (viceversa)
puts "Método swapcase => " + nombre.swapcase
#cambia el primer carácter a mayúscula
puts "Método capitalize => " + nombre.capitalize
#devuelve el tamaño del string ingresado
puts "Método length => " + nombre.length.to_s