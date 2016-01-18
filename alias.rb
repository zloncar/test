module Shared
  def first_hotel_instalment
    hotel_balance / number_of_hotel_instalments
  end

  def last_hotel_instalment
    hotel_balance - first_hotel_instalment * ( number_of_hotel_instalments - 1 )
  end

  def hotel_balance
    1001
  end

  def number_of_hotel_instalments
    instalments_mapping.fetch(self.class, 1)
  end

  def instalments_mapping
    {
      Four => 2,
      Five => 3,
      Six => 4
    }
  end
end

class Four
  include Shared

  def instalments
    [
      first_hotel_instalment,
      last_hotel_instalment
    ]
  end
end

class Five
  include Shared

  alias_method :second_hotel_instalment, :first_hotel_instalment

  def first_hotel_instalment
    second_hotel_instalment
  end

  def instalments
    [
      first_hotel_instalment,
      second_hotel_instalment,
      last_hotel_instalment
    ]
  end
end

class Six
  include Shared

  alias_method :second_hotel_instalment, :first_hotel_instalment
  alias_method :third_hotel_instalment, :first_hotel_instalment

  def first_hotel_instalment
    second_hotel_instalment
  end

  def instalments
    [
      first_hotel_instalment,
      second_hotel_instalment,
      third_hotel_instalment,
      last_hotel_instalment
    ]
  end
end

p Four.new.instalments
p Five.new.instalments
p Six.new.instalments
