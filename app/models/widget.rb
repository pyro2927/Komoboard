class Widget
  include Mongoid::Document
  field :name, :type => String
  field :type, :type => String
  
  
  def get_widget_file (klass)
    if klass = BaseWidget.registry[name.to_sym]
      @parser = klass.new(self)
    end
  end
  
  def get_html
    
    
  end
  
end
