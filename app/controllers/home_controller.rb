class HomeController < ApplicationController
  def index
    if params[:id]
      @tira = Tira.find(params[:id])
    else
      @tira = Tira.last  
    end
  	
    
   
  end
  def archivo
    @tiras = Tira.all
  end

  def voces
    @users = User.all
    
  end
   

  def tienda
  end
  def teo
  end
  def etica
  end
  def colabora
  end
end
