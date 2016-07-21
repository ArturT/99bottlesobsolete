class Bottles
  def verse(num_of_bottles)
    left_bottles = num_of_bottles - 1
    pluralize_bottles = pluralize(left_bottles, 'bottle', 'bottles')

    "#{num_of_bottles} bottles of beer on the wall, #{num_of_bottles} bottles of beer.\nTake one down and pass it around, #{left_bottles} #{pluralize_bottles} of beer on the wall.\n"
  end

  private

  def pluralize(count, singular_word, plural_word)
    if count == 1
      singular_word
    else
      plural_word
    end
  end
end
