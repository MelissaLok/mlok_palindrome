# frozen_string_literal: true

require 'test_helper'

class MlokPalindromeTest < Minitest::Test
  def test_non_palindrome
    refute 'apple'.palindrome?
  end

  def test_literal_palindrome
    assert 'racecar'.palindrome?
  end

  def test_mixedcase_palindrome
    assert 'RaceCar'.palindrome?
  end

  def test_punctuation_palindrome
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_letter
    assert_equal "Madam, I'm Adam.".letters, 'MadamImAdam'
  end
end
