# frozen_string_literal: true

require 'json'

# Class for save and manipulate articles data.
# Provide method that return recommendations using Round-Robin approach
class Article
  attr_accessor :data

  def initialize(data)
    @data = sanitize_data(data)
  end

  def recommendations(num = 4)
    arrays = data_values
    result = []

    num.times do
      arrays.each do |array|
        result << array.shift['token'].to_i if !array.empty? && result.size < num
      end
    end
    result
  end

  private

  def sanitize_data(data)
    data.is_a?(Hash) ? data : JSON.parse(data)
  end

  def data_values
    @data.values.map(&:dup)
  end
end
