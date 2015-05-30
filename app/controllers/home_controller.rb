class HomeController < ApplicationController
  require 'rss'
  def index
    if params[:id]
      @tira = Tira.where(aprobado: true).find(params[:id])
    else
      @tira = Tira.where(aprobado: true).last  
    end
  	if params[:like]
      @tira = Tira.find(params[:id])
      @tira.likes=@tira.likes+1
      @tira.save
    elsif params[:dislike]
      @tira.dislikes=@tira.dislikes+1
      @tira.save
    end
    
   
  end

  

  def archivo
    @tiras = Tira.where(aprobado: true).all
  end

  def voces
    @users = User.all
    
  end
   

  def tienda
  end
  def teo
  end
  def blog
    begin
       @latest_blog_posts = RSS::Parser.parse(open('https://teophiloequipo.wordpress.com/feed/').read, false).items[0..2]
     rescue
       # Do nothing, just continue.  The view will skip the blog section if the feed is nil.
       @latest_blog_posts = nil
     end
    
  end
  def etica
  end
  def colabora
  end
end
