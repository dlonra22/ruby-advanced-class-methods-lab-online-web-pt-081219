class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.create
     @@all << self.new
  end
  
  def self.new_by_name(nme)
      sng = self.new
      sng.name = nme
      sng
  end
  
  def self.create_by_name(nme)
       sng = self.new
       sng.name = nme
       @@all << sng
       sng
  end
  
  def self.find_by_name(nme)
      @@all.each do|sng| 
        if sng.name == nme
           return sng
        else return "not found"
        end
      end
  end
  
  def self.find_or_create_by_name(nme)
      if Song.find_by_name
  end
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
end

