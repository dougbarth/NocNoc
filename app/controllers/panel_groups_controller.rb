class PanelGroupsController < ApplicationController
  # GET /panel_groups
  # GET /panel_groups.xml
  def index
    @panel_groups = PanelGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @panel_groups }
    end
  end

  # GET /panel_groups/1
  # GET /panel_groups/1.xml
  def show
    @panel_group = PanelGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @panel_group }
    end
  end

  # GET /panel_groups/new
  # GET /panel_groups/new.xml
  def new
    @panel_group = PanelGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @panel_group }
    end
  end

  # GET /panel_groups/1/edit
  def edit
    @panel_group = PanelGroup.find(params[:id])
  end

  # POST /panel_groups
  # POST /panel_groups.xml
  def create
    @panel_group = PanelGroup.new(params[:panel_group])

    respond_to do |format|
      if @panel_group.save
        flash[:notice] = 'PanelGroup was successfully created.'
        format.html { redirect_to(@panel_group) }
        format.xml  { render :xml => @panel_group, :status => :created, :location => @panel_group }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @panel_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /panel_groups/1
  # PUT /panel_groups/1.xml
  def update
    @panel_group = PanelGroup.find(params[:id])

    respond_to do |format|
      if @panel_group.update_attributes(params[:panel_group])
        flash[:notice] = 'PanelGroup was successfully updated.'
        format.html { redirect_to(@panel_group) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @panel_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /panel_groups/1
  # DELETE /panel_groups/1.xml
  def destroy
    @panel_group = PanelGroup.find(params[:id])
    @panel_group.destroy

    respond_to do |format|
      format.html { redirect_to(panel_groups_url) }
      format.xml  { head :ok }
    end
  end
end
