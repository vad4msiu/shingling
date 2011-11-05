require "shingling/version"

module Resemblance
  class Shingling
    def initialize(content = '', options = {})
      @content = content
      @shingle_length = options[:shingle_length] || 5
      @stop_words = options[:stop_words] || []
      @downcase = options[:downcase] || false
      @replace_chars = options[:replace_chars] || {}
    end

    def each_shinglings
      word = ""
      char_flag = false
      shingling = []
      position_end_words = []
      position_start, position_end = 0, 0

      @content.each_char do |char|
        char = @replace_chars[char] if @replace_chars.key? char
        if char !~ /[[:word:]]+/
          char_flag = true
        else
          if char_flag
            if !stop_word?(word) || word !~ /\S/
              shingling << (@downcase ? Unicode::downcase(word) : word)
              word = ""
              position_end_words << position_end
              if shingling.size == @shingle_length
                yield(shingling, position_start, position_end - 1)
                position_start = position_end_words.shift
                shingling.shift
              end
            end
            char_flag = false
          end
          word << char
        end
        position_end += 1
      end        
    end

    private

    def stop_word? word
      @stop_words.include? word
    end  
  end
end
