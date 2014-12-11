class TirasController < ApplicationController
  before_action :set_tira, only: [:show, :edit, :update, :destroy]

  def index
    @tiras = Tira.all
    
  end

  def show
    
  end

  def new
    @tira = Tira.new
    
  end

  def edit
  end

  def create
    @tira = Tira.new(tira_params)
    @tira.save
    respond_to do |format|
      if @tira.save
        format.html { redirect_to @tira, notice: 'Tira was successfully created.' }
        format.json { render :show, status: :created, location: @tira }
      else
        format.html { render :new }
        format.json { render json: @tira.errors, status: :unprocessable_entity }
      end
    end
   
  end

  def update
    @tira.update(tira_params)
    respond_to do |format|
      if @tira.update(tira_params)
        format.html { redirect_to @workout, notice: 'Tira was successfully updated.' }
        format.json { render :show, status: :ok, location: @tira }
      else
        format.html { render :edit }
        format.json { render json: @tira.errors, status: :unprocessable_entity }
      end
    end
    
  end

  def destroy
    @tira.destroy
    respond_to do |format|
      format.html { redirect_to tiras_url, notice: 'tira was successfully destroyed.' }
      format.json { head :no_content }
    end
   
  end

  private
    def set_tira
      @tira = Tira.find(params[:id])
    end

    def tira_params
      params.require(:tira).permit(:user_id, :titulo, :text1, :text2, :text3, :text4, :text5, :text6, :dia, :mes, :ano, :aprobado)
    end
end
