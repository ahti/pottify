class FeedModel
  attr_accessor :id 
  attr_accessor :name

  def initialize(id, name)
    @id = id
    @name = name
  end

  def to_s
    "Name: #{@name}, id: #{id}"
  end

  def serialize
    {id: @id, name: @name}
  end

  def self.deserialize(serial)
    self.new(serial["id"], serial["name"])
  end
end

class FeedListModel
  attr_accessor :list

  def initialize(list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end

  def map(&block)
    @list.map(&block)
  end

  def serialize()
    list.map { |item| item.serialize }
  end

  def self.deserialize(serialized)
    self.new serialized.map { |item| FeedModel.deserialize item }
  end
end
