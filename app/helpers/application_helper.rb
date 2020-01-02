module ApplicationHelper
  
  def cart_count_over_one
    if @cart.line_items.count > 0
      return "<span class='tag is-dark na-one'>#{@cart.line_items.count}</span>".html_safe
    end
  end
  
  def cart_has_item
    @cart.line_items.count > 0
  end
end
