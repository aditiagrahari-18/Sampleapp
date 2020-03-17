class StaticPagesController < ApplicationController
  # layout "main", except: [:home, :about]
  # layout "main", only: [:home, :about]
  def home
    if logged_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end
  def about

  end
  def contact

  end
end
