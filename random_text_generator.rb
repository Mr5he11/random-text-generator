require 'set'

N_WORDS = ARGV[0].to_i

file_in = File.read("./1000_parole_italiane_comuni.txt")
words = file_in.split("\n")
random_words = Set.new
N_WORDS.times do
  begin
    i = rand(words.length)
  end until !random_words.include?(words[i])
  random_words << words[i]
end
random_words_array = random_words.to_a
File.write("./PAROLE DA USARE.txt", random_words_array.join(", "))
