class Tira < ActiveRecord::Base
  belongs_to :user

  def self.get_previous_tira(current_tira)   
     Tira.where("tiras.id < ? ", current_tira.id).order('created_at asc').last
  end


  def self.get_next_tira(current_tira)                    
    	Tira.where("tiras.id > ? ", current_tira.id).order('created_at asc').first
   end
end
