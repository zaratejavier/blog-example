class PagesController < ApplicationController
  def index
    puts "in index method yo"
    @pages = Page.all #controller is interacting with model

    #although we dont code rails autom
    #rails is going to look for index.html.erb in the views/pages folder
  end

  def show
  end

  def new
  end
end
