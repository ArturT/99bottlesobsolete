class Bottles
  def verse(num_of_bottles)
    num_of_left_bottles = num_of_bottles - 1

    if num_of_bottles.zero?
      first_sentense = "No more bottles of beer on the wall, no more bottles of beer."
      second_sentense = "Go to the store and buy some more, 99 bottles of beer on the wall."
    else
      first_sentense = "#{num_of_bottles} #{pluralize_bottles(num_of_bottles)} of beer on the wall, #{num_of_bottles} #{pluralize_bottles(num_of_bottles)} of beer."

      second_sentense = "Take #{prefix_down(num_of_left_bottles)} down and pass it around, #{left_bottles_words(num_of_left_bottles)} of beer on the wall."
    end

    "#{first_sentense}\n#{second_sentense}\n"
  end

  def verses(x, y)
    verse(x) << "\n" << verse(y)
  end

  private

  def pluralize(count, singular_word, plural_word)
    if count == 1
      singular_word
    else
      plural_word
    end
  end

  def left_bottles_words(num_of_left_bottles)
    if num_of_left_bottles.zero?
      'no more bottles'
    else
      "#{num_of_left_bottles} #{pluralize_bottles(num_of_left_bottles)}"
    end
  end

  def pluralize_bottles(num_of_left_bottles)
    pluralize(num_of_left_bottles, 'bottle', 'bottles')
  end

  def prefix_down(num_of_left_bottles)
    if num_of_left_bottles.zero?
      'it'
    else
      'one'
    end
  end
end
