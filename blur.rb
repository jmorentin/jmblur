class Image
  def initialize(img)
    @img = img
  end
  
  def get_image
    @img.collect { |row| row.join("")}.join("\n")
  end
  def output_image
    puts get_image
  end
  def blur
    nd = @img.collect { |r| r.collect { |c| c } } 
    (@img.length).times do |row|
      (@img[row].length).times do |col|
        if  @img[row][col] == 1 then
          [-1,0,1].each do |offset|
            nd[row + offset][col] = 1 if row + offset >=0 and row + offset < @img.length
            nd[row][col + offset] = 1 if col + offset >= 0 and col + offset < @img[row].length
          end
        end
      end
    end
    return nd
  end
  def blur!
    @img = blur
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

puts image.output_image