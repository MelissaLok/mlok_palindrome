# frozen_string_literal: true

require 'mlok_palindrome/version'

class String
  def palindrome?
    processed == processed.reverse
  end

  # def letters
  #   self.chars.select { |c| c.match(/[a-z]/i) }.join
  # end

  private

  # def processed
  #   letters.downcase
  # end

  def processed
    self.scan(/[a-z]/i).join.downcase
  end
end
