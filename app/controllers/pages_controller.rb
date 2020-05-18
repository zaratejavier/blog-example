class PagesController < ApplicationController
  def index
    puts "in index method yo"
    @pages = Page.all #controller is interacting with model

    #although we dont code rails autom
    #rails is going to look for index.html.erb in the views/pages folder
  end

  def show
    #find a page but we need an id
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
    #go to a folder views/pages/new.hmtl/etc
  end

  

  def create
   @page = Page.new(pages_params)
   if @pages.save
    redirect_to pages_path
   else
    render :new
   end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])

    if (@page.update(pages_params))
      redirect_to pages_path
      else
        render :edit
      end
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to pages_path

  end


  private
    
  def pages_params
    params.require(:page).permit(:title, :author, :body)
  end

end
