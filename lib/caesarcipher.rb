class CaesarCipher
  def initialize(shift)
    @n = shift
  end

  def encode(string)
    arr = string.downcase.split(//)
    arr.map!{|x|
    if (x =~ (/\W/))!=nil
      x
    else
      @n.times{
        x = x.next
        x = "a" if x == "aa"
        }
      x
    end
    }
  arr.join.upcase
  end

  def decode(string)
    arr = string.downcase.split(//)
    arr.map!{|x|
    if (x =~ (/\W/))!=nil
      x
    else
      @n+(26-@n).times{
        x = x.next
        x = "a" if x == "aa"
        }
      x
    end
    }
    arr.join.upcase
  end
end

c = CaesarCipher.new(5)
puts c.encode("WAFFLES")
print c.decode("HTIJBFWX")
