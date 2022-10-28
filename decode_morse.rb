def decode_morse_code(m_code)
  split_morse_sentence(m_code).map do |word|
    decode_single_word(word)
  end.join(' ')
end

def split_morse_sentence(morse_sentence)
  morse_sentence.split('   ')
end

def decode_single_word(word)
  word.split.map { |char| decode_char(char) }.join
end

def decode_char(character)
  repo = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C',
    '-..' => 'D', '.' => 'E', '..-.' => 'F',
    '--.' => 'G', '....' => 'H', '..' => 'I',
    '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
    '...' => 'S', '-' => 'T', '..-' => 'U',
    '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z', '.----' => '1',
    '..---' => '2', '...--' => '3', '....-' => '4',
    '.....' => '5', '-....' => '6', '--...' => '7',
    '---..' => '8', '----.' => '9', '-----' => '0'
  }
  repo[character]
end

print decode_morse_code('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
