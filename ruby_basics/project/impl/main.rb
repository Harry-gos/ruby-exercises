A_ORD = 'a'.ord
UPPER_A_ORD = 'A'.ord
Z_ORD = 'z'.ord
UPPER_Z_ORD = 'Z'.ord

def is_lower_leter(char)
  A_ORD <= char && char <= Z_ORD
end

def is_upper_letter(char)
  UPPER_A_ORD <= char && char <= UPPER_Z_ORD
end

def caesar_cipher(string, shift_factor)
  encoded_char_array = string.split('').map do |char|
    char_ord = char.ord

    if is_lower_leter(char_ord)
      base_ord = A_ORD
    elsif is_upper_letter(char_ord)
      base_ord = UPPER_A_ORD
    else
      base_ord = nil
    end

    base_ord ? ((char_ord - base_ord  + shift_factor ) % 26 + base_ord).chr : char
 
  end
  encoded_char_array.join("")
end