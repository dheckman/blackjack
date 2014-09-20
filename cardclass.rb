class Card
  def initialize(face,suit)
    @face = face
    @suit = suit
  end
  def value
    if @face == "J" || @face == "Q" || @face = "K"
      value = 10
    elsif @face == 1
      value = 11
    else
    value = @face
    end
  end
end
