class Image
  def initialize(img)
    @img = img
  end

  def output_image
    @img.collect { |row| row.join("")}.join("\n")
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

puts image.output_image