class MessageFieldsController < ApplicationController
  # GET /message_fields
  # GET /message_fields.json
  def index
    @message_fields = MessageField.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @message_fields }
    end
  end

  # GET /message_fields/1
  # GET /message_fields/1.json
  def show
    @message_field = MessageField.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @message_field }
    end
  end

  # GET /message_fields/new
  # GET /message_fields/new.json
  def new
    @message_field = MessageField.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @message_field }
    end
  end

  # GET /message_fields/1/edit
  def edit
    @message_field = MessageField.find(params[:id])
  end

  # POST /message_fields
  # POST /message_fields.json
  def create
    @message_field = MessageField.new(params[:message_field])

    respond_to do |format|
      if @message_field.save
        format.html { redirect_to @message_field, notice: 'Message field was successfully created.' }
        format.json { render json: @message_field, status: :created, location: @message_field }
      else
        format.html { render action: "new" }
        format.json { render json: @message_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /message_fields/1
  # PUT /message_fields/1.json
  def update
    @message_field = MessageField.find(params[:id])

    respond_to do |format|
      if @message_field.update_attributes(params[:message_field])
        format.html { redirect_to @message_field, notice: 'Message field was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @message_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /message_fields/1
  # DELETE /message_fields/1.json
  def destroy
    @message_field = MessageField.find(params[:id])
    @message_field.destroy

    respond_to do |format|
      format.html { redirect_to message_fields_url }
      format.json { head :no_content }
    end
  end
end
