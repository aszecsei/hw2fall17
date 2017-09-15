class Dessert

  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  attr_reader :name
  attr_reader :calories
  
  def healthy?
    return @calories < 200
  end
  
  def delicious?
    return true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    @name = name
    @calories = calories
    @flavor = flavor
  end
  
  attr_reader :flavor
  
  def delicious?
    return @flavor != "black licorice"
  end
end
