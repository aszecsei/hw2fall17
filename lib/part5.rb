class CartesianProduct
  include Enumerable

  def initialize(a,b)
    @a = a
    @b = b
  end

  def each
    @a.each { |a_e| @b.each { |b_e| yield [a_e, b_e] } }
  end

end