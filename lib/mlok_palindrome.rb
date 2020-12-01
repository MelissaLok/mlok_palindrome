# frozen_string_literal: true

require 'mlok_palindrome/version'

class String
  def palindrome?
    processed == processed.reverse
  end

  def letters
    letters = []
    (0..length - 1).each do |i|
      letters << self[i] if self[i].match(/[a-zA-Z]/)
    end
    letters.join
  end

  private

  def processed
    letters.downcase
  end
end
