module Enumerable
  def my_each
    return enum_for(:my_each) unless block_given?

    index = 0
    while index < size
      yield(self[index])
      index += 1
    end
    self
  end

  def my_each_with_index(given_index = nil)
   return enum_for(:my_each_with_index) unless block_given?

   index = 0
   index = given_index unless given_index.nil?

