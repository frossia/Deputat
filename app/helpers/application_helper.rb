module ApplicationHelper

  def full_username(fn, mn)
    if (fn && mn)
      @name = fn + ' ' + mn
    else
      @name = fn
    end
  end

end
