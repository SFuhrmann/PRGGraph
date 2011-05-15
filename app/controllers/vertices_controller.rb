class VerticesController < ApplicationController
  # GET /vertices
  # GET /vertices.xml
  def index
    @vertices = Vertex.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vertices }
    end
  end

  # GET /vertices/1
  # GET /vertices/1.xml
  def show
    @vertex = Vertex.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vertex }
    end
  end

  # GET /vertices/new
  # GET /vertices/new.xml
  def new
    @vertex = Vertex.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vertex }
    end
  end

  # GET /vertices/1/edit
  def edit
    @vertex = Vertex.find(params[:id])
  end

  # POST /vertices
  # POST /vertices.xml
  def create
    @vertex = Vertex.new(params[:vertex])

    respond_to do |format|
      if @vertex.save
        format.html { redirect_to(@vertex, :notice => 'Vertex was successfully created.') }
        format.xml  { render :xml => @vertex, :status => :created, :location => @vertex }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vertex.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vertices/1
  # PUT /vertices/1.xml
  def update
    @vertex = Vertex.find(params[:id])

    respond_to do |format|
      if @vertex.update_attributes(params[:vertex])
        format.html { redirect_to(@vertex, :notice => 'Vertex was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vertex.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vertices/1
  # DELETE /vertices/1.xml
  def destroy
    @vertex = Vertex.find(params[:id])
    @vertex.destroy

    respond_to do |format|
      format.html { redirect_to(vertices_url) }
      format.xml  { head :ok }
    end
  end
end
