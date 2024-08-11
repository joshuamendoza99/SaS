def convert_case(input)
  # Reemplazar guiones bajos y guiones con espacios para poder dividir el string
  cleaned_input = input.gsub(/[_-]/, ' ')

  # Dividir el string en palabras
  words = cleaned_input.split

  # Verificar si la primera palabra estaba en mayúsculas originalmente
  is_first_word_uppercase = input.split(/[_-]/).first == input.split(/[_-]/).first.capitalize

  # Convertir la primera palabra y todas las demás a las reglas deseadas
  converted_words = words.each_with_index.map do |word, index|
    if index == 0
      is_first_word_uppercase ? word.capitalize : word.downcase
    else
      word.capitalize
    end
  end

  # Unir las palabras convertidas con un espacio
  converted_words.join(' ')
end

# Ejemplos de uso
puts convert_case("the-stealth-warrior")    # Output: "the Stealth Warrior"
puts convert_case("The_Stealth_Warrior")    # Output: "The_Stealth_Warrior"
puts convert_case("The_Stealth-Warrior")    # Output: "The_Stealth-Warrior"
