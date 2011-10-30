require 'accounts'



class AccountsController < ApplicationController

respond_to :json

  def index
  end
  
  def search
    @json = Accounts.search(params[:accountName])
    #respond_with(@json)
    render :json => @json
  end
  
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
