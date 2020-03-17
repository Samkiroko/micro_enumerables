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