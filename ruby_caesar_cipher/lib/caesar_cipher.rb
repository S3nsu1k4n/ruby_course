# a - z == 97 - 122
# A - Z == 65 - 90

def caesar_cipher(string, num)
  # string --> string to be modified
  # num --> shift factor
  num = num % 26 # prevent out of char range, also helps handling negative numbers (both found through rspec)
  result = string.split('').map do |char|
    char_int = char.ord
    if char_int.between?(97, 122)
      if char_int + num < 97
        (123 - (char_int + num - 97)).chr
      elsif char_int + num > 122
        (96 + (char_int + num - 122)).chr
      else
        (char_int + num).chr
      end
    elsif char_int.between?(65, 90)
      if char_int + num < 65
        (91 - (char_int + num - 65)).chr
      elsif char_int + num > 90
        (64 + (char_int + num - 90)).chr
      else
        (char_int + num).chr
      end
    else
      char
    end
  end
  result.join
end

caesar_cipher('What a string!', 5)
