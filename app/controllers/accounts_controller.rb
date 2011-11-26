require 'accounts'

class AccountsController < ApplicationController

respond_to :json, :xml, :js, :html

  def index
  end
  
  def search
    @json = Accounts.search(params[:accountName])
    #@id = @json["Id"]
    #respond_with(@json) do |format|
      #format.js {render :json => @json, :callback => params[:callback]}
    #  format.json {render :json => @json}
    #end
        #respond_with(@json)
    #render :json => @id
    #render :json => @json["records"][0]["Id"]
    #render :json => @json["records"][0]["Id"].to_json, :callback => params[:callback]
    #render :json => @json, :callback => params[:callback]
  end
  
  def rest
    @json = Accounts.search(params[:accountName])
    #@id = @json["Id"]
    #respond_with(@json) do |format|
      #format.js {render :json => @json, :callback => params[:callback]}
    #  format.json {render :json => @json}
    #end
        #respond_with(@json)
    #render :json => @id
    #render :json => @json["records"][0]["Id"]
    render :json => @json["records"][0]["Id"].to_json, :callback => params[:callback]
    #render :json => @json, :callback => params[:callback]
  end
  
  #def show
  #  @account = Accounts.search(params[:accountName])
  #  respond_with(@account) do |format|
  #    format.js {render :json => @account, :callback => params[:callback]}
  #  end
  #end
  
  def show
    @account = Accounts.retrieve(params[:id])
    @opportunities = Accounts.opportunities(params[:id])    
  end
  
  def create
     @account = Accounts.create
  end
  
  def edit
     @account = Accounts.retrieve(params[:id])
  end
  
  def save
    Accounts.save(params)
    redirect_to :action => :show, :id => params[:id]
  end  
  
  def new_opp 
    @account = Accounts.retrieve(params[:id])
  end
  
  def save_opp
    Accounts.create_opp(params)
    redirect_to :action => :show, :id => params[:id]
  end

end
