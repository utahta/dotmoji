module Dotmoji

  class Mapping
    FONT = File.expand_path('misaki_gothic.ttf', __dir__)
    POINTSIZE = 8

    # get dot data
    def get(str)
      img = make_image(str)

      data = Array.new(img.rows) { Array.new(img.columns) }

      img.rows.times do |y|
        img.columns.times do |x|
          src = img.pixel_color(x, y)
          data[y][x] = src.to_color == 'black' ? 1 : 0
        end
      end

      trim(data) # two-dimensional array
    end

    private

    def make_text()
      text = Magick::Draw.new
      text.font = FONT
      text.pointsize = POINTSIZE
      text
    end

    def make_image(str)
      text = make_text
      metrics = text.get_type_metrics(str)
      img = Magick::Image.new(metrics.width, metrics.height)

      text.annotate(img, 0,0,0,0, str) do
        self.fill = 'black'
        self.gravity = Magick::SouthEastGravity
        self.text_antialias = false
      end
      img
    end

    def trim(data)
      rows = data.size
      columns = data[0].size

      # top
      rows.times do
        selected = data[0].select {|val| val == 1 }
        break unless selected.empty?
        data.delete_at(0)
        rows -= 1
      end

      # bottom
      rows.times do
        selected = data[-1].select {|val| val == 1 }
        break unless selected.empty?
        data.delete_at(-1)
        rows -= 1
      end

      # left
      columns.times do
        selected = []
        rows.times do |i|
          selected << 1 if data[i][0] == 1
        end
        break unless selected.empty?
        rows.times do |i|
          data[i].delete_at(0)
        end
        columns -= 1
      end

      # right
      columns.times do
        selected = []
        rows.times do |i|
          selected << 1 if data[i][-1] == 1
        end
        break unless selected.empty?
        rows.times do |i|
          data[i].delete_at(-1)
        end
        columns -= 1
      end

      data
    end
  end

end