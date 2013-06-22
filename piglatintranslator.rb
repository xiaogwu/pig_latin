class PigLatinTranslator
  attr_accessor :input_str

  def initialize(input_str)
    @input_str = input_str
  end

  # orig_words = []
  
  def to_pig
    orig_words = @input_str.split # Returns an Array
    # p orig_words.class
    pig_words = []
    orig_words.each do |word|
      # Word starts with a vowel so just append 'way' to it
      if word[0] =~ /[aeiouAEIOU]/
        pig_words << word.concat("way").capitalize
      # Doesn't start with a vowel, find index of first vowel
      else
        index = first_vowel # Find first vowel in word
        # p index
        pre_vowel = word[0, index] # Part of word before first vowel
        # p sub_string
        # Pig latin word 
        pig_word = word[index, word.length - 1].concat(pre_vowel).concat("ay").capitalize
        pig_words << pig_word
      end
    end
    pig_words.join(' ') # Return a string joined together with spaces
  end

  # Returns the index of first non-vowel
  def first_vowel
    @input_str.index(/[aeiouAEIOU]/) #Returns an Integer
  end
end

