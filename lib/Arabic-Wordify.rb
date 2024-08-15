# lib/Arabic-Wordify.rb
require_relative 'ArabicWordify/arabic_number_words.rb'
require_relative 'ArabicWordify/error'

module ArabicWordify
  def self.convert(number)
    raise ArgumentError, 'Number cannot be nil or empty' if number.nil? || number.to_s.empty?
    raise ArgumentError, 'Number must be an integer' unless number.is_a?(Integer)
  
    ArabicWordify::ArabicNumberWords.convert_to_text(number)
  rescue => e
    raise ArabicWordifyError, "Failed to convert number to words: #{e.message}"
  end
  
end