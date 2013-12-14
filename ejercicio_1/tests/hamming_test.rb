require_relative 'minitest_helper'
require 'hamming'
class HammingTest < Minitest::Test
  def test_word_count
    s  = 'GAGCCTACTAACGGGAT'
    t  = 'CATCGTAATGACGGCCT'
    assert_equal 7, Hamming.compute(s, t)

    s = '1011101'
    t = '1001001'
    assert_equal 2, Hamming.compute(s, t)

    s = '2143896'
    t = '2233796'
    assert_equal 3, Hamming.compute(s, t)

    s = 'tener'
    t = 'reses'
    assert_equal 3, Hamming.compute(s, t)
  end
end