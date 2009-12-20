class ContentObjectsController < ApplicationController
  before_filter :requires_login, :except => [:index, :show]

  def index
    @content_objects = ContentObject.paginate(:page => params[:page], :order => 'created_at desc')
  end

  def show
    @content_object = ContentObject.find(params[:id], :include => :tags)
  end

  def new
    @content_object = ContentObject.new
    @categories = Category.all.map { |x| [x.name, x.id] }
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
