class MstJininsController < ApplicationController
  # GET /mst_jinins
  # GET /mst_jinins.json
  def index
    @mst_jinins = MstJinin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mst_jinins }
    end
  end

  # GET /mst_jinins/1
  # GET /mst_jinins/1.json
  def show
    @mst_jinin = MstJinin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mst_jinin }
    end
  end

  # GET /mst_jinins/new
  # GET /mst_jinins/new.json
  def new
    @mst_jinin = MstJinin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mst_jinin }
    end
  end

  # GET /mst_jinins/1/edit
  def edit
    @mst_jinin = MstJinin.find(params[:id])
  end

  # POST /mst_jinins
  # POST /mst_jinins.json
  def create
    @mst_jinin = MstJinin.new(params[:mst_jinin])

    respond_to do |format|
      if @mst_jinin.save
        format.html { redirect_to @mst_jinin, notice: 'Mst jinin was successfully created.' }
        format.json { render json: @mst_jinin, status: :created, location: @mst_jinin }
      else
        format.html { render action: "new" }
        format.json { render json: @mst_jinin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mst_jinins/1
  # PUT /mst_jinins/1.json
  def update
#    @mst_jinin = MstJinin.find(params[:id])
#
#    respond_to do |format|
#      if @mst_jinin.update_attributes(params[:mst_jinin])
#        format.html { redirect_to @mst_jinin, notice: 'Mst jinin was successfully updated.' }
#        format.json { head :no_content }
#      else
##        format.html { render action: "edit" }
#        format.json { render json: @mst_jinin.errors, status: :unprocessable_entity }
#      end
#    end
#  end

    begin
      @mst_jinin = MstJinin.find(params[:id])
        MstJinin.transaction do
        respond_to do |format|
            @mst_jinin.update_attributes!(params[:mst_jinin])
            format.html { redirect_to @mst_jinin, notice: 'Mst jinin was successfully updated.' }
            format.json { head :no_content }

        end
      end
    #例外　ロック
    rescue  ActiveRecord::StaleObjectError
        render :action => 'lock' 
    rescue        ActiveRecord::RecordInvalid
        render :action => 'edit' 
    else
#
    end
 end








  # DELETE /mst_jinins/1
  # DELETE /mst_jinins/1.json
  def destroy
    @mst_jinin = MstJinin.find(params[:id])
    @mst_jinin.destroy

    respond_to do |format|
      format.html { redirect_to mst_jinins_url }
      format.json { head :no_content }
    end
  end
  
end
