require File.expand_path 'lib/table_top'

describe TableTop do

  let(:width) { 10 }
  let(:height) { 10 }
  let(:table_top) { TableTop.new(width, height) }

  describe "#initialize" do
    it "assigns width" do
      expect(table_top.width).to be width
    end

    it "assigns height" do
      expect(table_top.height).to be height
    end
  end

end
