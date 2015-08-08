class String
  class << self
    # Extends String by adding a class method that reverses a sentence (i.e. an Array of strings) using recursion and
    # wacky tricks learned from Haskell
    #
    # Returns a string
    def reverse_sentence(xs)
      if !xs.kind_of?(String)
        nil
      elsif xs.empty? || xs.split == [xs]
        xs
      else
        x, *xs = xs.split
        reverse_sentence(xs.join(" ")) + " " + x
      end
    end
  end
end
