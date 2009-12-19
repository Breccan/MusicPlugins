class ContentObjectsController < ApplicationController
  before_filter :requires_login, :except => [:index, :show]

  def index
    @content_objects = ContentObject.paginate(:page => params[:page], :order => 'created_at desc')
  end

  def show
    
  end

  def new
    @content_object = ContentObject.new
  end

  def create
    @content_object = ContentObject.new(params[:content_object])
    #paperclip goes here
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
