class ContentObjectsController < ApplicationController
  before_filter :requires_login, :except => [:index, :show]

  def index
    @content_objects = ContentObject.paginate(:page => params[:page], :order => 'created_at desc')
  end

  def show
    @content_object = ContentObject.find(params[:page]) || (flash[:error] = "No item with that id" and  redirect_to root_url)
  end

  def new
    @content_object = ContentObject.new
  end

  def create
    @content_object = ContentObject.new(params[:content_object])
    @content_object.user_id = @current_user.id
    if @content_object.save
      flash[:notice] = "Object successfully created"
    else
      render :action => :new
    end
  end

  def edit 

  end

  def update

  end

  def destroy

  end


end
