class Article

  attr_accessor :title, :content, :author

  
  def initialize(attr)
    self.title = attr[:title]
    @content = attr[:content]
    @author = attr[:author]
  end

  def title=(title)
    @title = title
    @slug = @title.sluggify 
  end

  def quick_update(new_title)
    self.title = new_title
  end


  def change_title(new_title)
    self.title = new_title
  end



  def create
  end

  def new
  end

end
