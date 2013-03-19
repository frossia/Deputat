module ApplicationHelper

  def full_username(fn, mn)
    if (fn && mn)
      @name = fn + ' ' + mn
    else
      @name = fn
    end
  end

  def is_admin(user)
    grp = user.user_groups.find_all
    grp.each do |g|
      if g.id == 1
        @ug = true
        break
      else
        @ug = false
      end
    end
    @ug
  end

  def is_deputat(user)
    grp = user.user_groups.find_all
    grp.each do |g|
      if g.id == 2
        @ug = true
        break
      else
        @ug = false
      end
    end
    @ug
  end


  def avatar_url(user)
    #if user.avatar_url.present?
    #  user.avatar_url
    #else        http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&f=y
      default_url = "http://www.gravatar.com/avatar/00000000000000000000000000000000?d=retro&f=y&s=34"
      gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
      "http://gravatar.com/avatar/#{gravatar_id}.jpg?s=34&d=#{CGI.escape(default_url)}"
    #end
  end

end
