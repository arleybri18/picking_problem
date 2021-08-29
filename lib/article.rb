class Article
  def initialize(data)
    @data = data
  end

  def recommendations
    arrays = @data.values
    result = []

    4.times do
      arrays.each do |array|
        result << array.shift['token'].to_i if !array.empty? && result.size < 4
      end
    end
    result
  end
end
