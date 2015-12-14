module Memsizable
  extend ActiveSupport::Concern

  module ClassMethods
    def memsize
      sum = 0
      self.find_each{ |r| sum += r.memsize }
      sum
    end

    def average_memsize
      memsize / self.count
    end
  end

  def memsize
    self.attributes.keys.map{ |attr_name| self.send(attr_name)}.inject{|sum, attr| sum + (attr.respond_to?(:size) ? attr.size : attr.to_s.size)  }
  end
end