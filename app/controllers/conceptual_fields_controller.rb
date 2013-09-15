class ConceptualFieldsController < ApplicationController
  # GET /conceptual_fields
  # GET /conceptual_fields.json
  def index
    @conceptual_fields = ConceptualField.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @conceptual_fields }
    end
  end

  # GET /conceptual_fields/1
  # GET /conceptual_fields/1.json
  def show
    @conceptual_field = ConceptualField.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @conceptual_field }
    end
  end

  # GET /conceptual_fields/new
  # GET /conceptual_fields/new.json
  def new
    @conceptual_field = ConceptualField.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @conceptual_field }
    end
  end

  # GET /conceptual_fields/1/edit
  def edit
    @conceptual_field = ConceptualField.find(params[:id])
  end

  # POST /conceptual_fields
  # POST /conceptual_fields.json
  def create
    @conceptual_field = ConceptualField.new(params[:conceptual_field])

    respond_to do |format|
      if @conceptual_field.save
        format.html { redirect_to @conceptual_field, notice: 'Conceptual field was successfully created.' }
        format.json { render json: @conceptual_field, status: :created, location: @conceptual_field }
      else
        format.html { render action: "new" }
        format.json { render json: @conceptual_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /conceptual_fields/1
  # PUT /conceptual_fields/1.json
  def update
    @conceptual_field = ConceptualField.find(params[:id])

    respond_to do |format|
      if @conceptual_field.update_attributes(params[:conceptual_field])
        format.html { redirect_to @conceptual_field, notice: 'Conceptual field was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @conceptual_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conceptual_fields/1
  # DELETE /conceptual_fields/1.json
  def destroy
    @conceptual_field = ConceptualField.find(params[:id])
    @conceptual_field.destroy

    respond_to do |format|
      format.html { redirect_to conceptual_fields_url }
      format.json { head :no_content }
    end
  end
end
