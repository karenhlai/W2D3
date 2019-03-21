class Card

  attr_reader :suits, :value

  def initialize(value, suits)
    @suits = suits
    @value = value
  end

end