require 'minitest/autorun'
require 'minitest/pride'
require './titleize.rb'

# By now we should be getting better at reading tests. We should able to see
# what methods will need to be defined and what they need to return.

class TestTitleize < MiniTest::Test

  def test_titleize_capitalizes_a_word
    assert_equal "Jaws", titleize("jaws")
  end

  def test_titleize_title_case
    assert_equal "David Copperfield", titleize("david copperfield")
  end

  def test_titleize_not_little_words
    assert_equal "War and Peace", titleize("war and peace")
  end

  def test_titleize_little_words_at_start
     assert_equal "The Bridge over the River Kwai", titleize("the bridge over the river kwai")
  end
end
