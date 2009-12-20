class ContentObjectsController < ApplicationController
  before_filter :requires_login, :except => [:index, :show]

  def index
    if params[:category_id]
      @content_objects = ContentObject.paginate(:page => params[:page], :conditions => ["category_id = ?", params[:category_id].to_i], :order => 'created_at desc')
      @selected_category = Category.find(params[:category_id].to_i
    else
      @content_objects = ContentObject.paginate(:page => params[:page], :order => 'created_at desc')
    end
  end

  def show
    @content_object = ContentObject.find(params[:id], :include => :tags)
  end

  def new
    @content_object = ContentObject.new
  end

  def create
    @content_object = ContentObject.new(params[:content_object])
    @content_object.user_id = @current_user.id
    if @content_object.save
      flash[:notice] = "Object successfully created"
      redirect_to content_object_path(@content_object)
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
