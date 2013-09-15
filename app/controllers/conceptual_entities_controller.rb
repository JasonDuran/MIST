class ConceptualEntitiesController < ApplicationController
  # GET /conceptual_entities
  # GET /conceptual_entities.json
  def index
    @conceptual_entities = ConceptualEntity.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @conceptual_entities }
    end
  end

  # GET /conceptual_entities/1
  # GET /conceptual_entities/1.json
  def show
    @conceptual_entity = ConceptualEntity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @conceptual_entity }
    end
  end

  # GET /conceptual_entities/new
  # GET /conceptual_entities/new.json
  def new
    @conceptual_entity = ConceptualEntity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @conceptual_entity }
    end
  end

  # GET /conceptual_entities/1/edit
  def edit
    @conceptual_entity = ConceptualEntity.find(params[:id])
  end

  # POST /conceptual_entities
  # POST /conceptual_entities.json
  def create
    @conceptual_entity = ConceptualEntity.new(params[:conceptual_entity])

    respond_to do |format|
      if @conceptual_entity.save
        format.html { redirect_to @conceptual_entity, notice: 'Conceptual entity was successfully created.' }
        format.json { render json: @conceptual_entity, status: :created, location: @conceptual_entity }
      else
        format.html { render action: "new" }
        format.json { render json: @conceptual_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /conceptual_entities/1
  # PUT /conceptual_entities/1.json
  def update
    @conceptual_entity = ConceptualEntity.find(params[:id])

    respond_to do |format|
      if @conceptual_entity.update_attributes(params[:conceptual_entity])
        format.html { redirect_to @conceptual_entity, notice: 'Conceptual entity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @conceptual_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conceptual_entities/1
  # DELETE /conceptual_entities/1.json
  def destroy
    @conceptual_entity = ConceptualEntity.find(params[:id])
    @conceptual_entity.destroy

    respond_to do |format|
      format.html { redirect_to conceptual_entities_url }
      format.json { head :no_content }
    end
  end
end
