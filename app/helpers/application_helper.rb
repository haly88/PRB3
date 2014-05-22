module ApplicationHelper
  
  def title 
    base_title = "Valquila"
    if @titulo.nil?
      base_title
    else
      "#{@titulo}"
    end
  end
end
