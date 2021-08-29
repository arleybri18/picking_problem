class Article
  def initialize(data)
    @data = data
  end

  def recommendations(num = 4)
    arrays = @data.values
    result = []

    num.times do
      arrays.each do |array|
        result << array.shift['token'].to_i if !array.empty? && result.size < num
      end
    end
    result
  end
end
