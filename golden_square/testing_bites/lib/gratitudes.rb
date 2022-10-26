class Gratitudes
  def initialize
      @gratitude = []
  end
  def add(gratitude)
      @gratitude.push(gratitude)
  end
  def format
      formatted = "Be grateful for: "
      formatted += @gratitude.join(", ")
  end
end