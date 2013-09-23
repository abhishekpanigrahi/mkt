class CatalogsController < ApplicationController
  layout "catalog"
  # GET /catalogs
  # GET /catalogs.json
  def index
    @catalogs = Catalog.all
    @active_products=Product.find(:all,:conditions=>["is_active = ?",0])
    #@active_products=Product.where("product_id IN (?)", [7,8]).to_a

    @featured_products=Product.find(:all,:conditions=>["featured_product = ?",0])
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @catalogs }
    end
  end

  # GET /catalogs/1
  # GET /catalogs/1.json
  def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @catalog }
    end
  end

  # GET /catalogs/new
  # GET /catalogs/new.json
  def new
    @catalog = Catalog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @catalog }
    end
  end

  # GET /catalogs/1/edit
  def edit
    @catalog = Catalog.find(params[:id])
  end

  # POST /catalogs
  # POST /catalogs.json
  def create
    @catalog = Catalog.new(params[:catalog])

    respond_to do |format|
      if @catalog.save
        format.html { redirect_to @catalog, notice: 'Catalog was successfully created.' }
        format.json { render json: @catalog, status: :created, location: @catalog }
      else
        format.html { render action: "new" }
        format.json { render json: @catalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /catalogs/1
  # PUT /catalogs/1.json
  def update
    @catalog = Catalog.find(params[:id])

    respond_to do |format|
      if @catalog.update_attributes(params[:catalog])
        format.html { redirect_to @catalog, notice: 'Catalog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @catalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogs/1
  # DELETE /catalogs/1.json
  def destroy
    @catalog = Catalog.find(params[:id])
    @catalog.destroy

    respond_to do |format|
      format.html { redirect_to catalogs_url }
      format.json { head :no_content }
    end
  end
  
  def enquiryInbox
    #render :template => "catalogs", :layout => "enquiryInbox"
    #render :notice => 'enquiry inbox.'
    @featured_products=Product.find(:all,:conditions=>["featured_product = ?",0])

     #@enquiryInboxData = Product.where("product_id IN (?)", session[:product_ids].to_a)
     #@enquiryInboxData = Product.where("product_id IN (?)", "14")
     @enquiryInboxData = Product.find(:all)

  end

  def addToWishList
      #add params[:product_id] into seeesion Array

      (session[:product_ids] ||= []) << params[:product_id]
      render :nothing => true
  end

end
