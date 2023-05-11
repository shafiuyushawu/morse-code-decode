class MorseCodeDecoder
  MORSE_CODE = {
    '.-' => 'A',
    '-...' => 'B',
    '-.-.' => 'C',
    '-..' => 'D',
    '.' => 'E',
    '..-.' => 'F',
    '--.' => 'G',
    '....' => 'H',
    '..' => 'I',
    '.---' => 'J',
    '-.-' => 'K',
    '.-..' => 'L',
    '--' => 'M',
    '-.' => 'N',
    '---' => 'O',
    '.--.' => 'P',
    '--.-' => 'Q',
    '.-.' => 'R',
    '...' => 'S',
    '-' => 'T',
    '..-' => 'U',
    '...-' => 'V',
    '.--' => 'W',
    '-..-' => 'X',
    '-.--' => 'Y',
    '--..' => 'Z'
  }.freeze

  def self.decode_char(code)
    MORSE_CODE[code]
  end

  def self.decode_word(word)
    decoded_word = ''
    characters = word.split
    characters.each { |char| decoded_word << decode_char(char) }
    decoded_word << ' '
  end

  def self.decode(message)
    decoded_message = ''
    words = message.split('   ')
    words.each { |word| decoded_message << decode_word(word) }
    decoded_message.strip
  end
end

character = '.-'
decoded_character = MorseCodeDecoder.decode_char(character)
puts decoded_character

word = '-- -.--'
decoded_word = MorseCodeDecoder.decode_word(word)
puts decoded_word

message1 = '-- -.--   -. .- -- .'
decoded_message1 = MorseCodeDecoder.decode(message1)
puts decoded_message1

message2 = '      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message2 = MorseCodeDecoder.decode(message2)
puts decoded_message2
