require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe MessageFieldsController do

  # This should return the minimal set of attributes required to create a valid
  # MessageField. As you add validations to MessageField, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MessageFieldsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all message_fields as @message_fields" do
      message_field = MessageField.create! valid_attributes
      get :index, {}, valid_session
      assigns(:message_fields).should eq([message_field])
    end
  end

  describe "GET show" do
    it "assigns the requested message_field as @message_field" do
      message_field = MessageField.create! valid_attributes
      get :show, {:id => message_field.to_param}, valid_session
      assigns(:message_field).should eq(message_field)
    end
  end

  describe "GET new" do
    it "assigns a new message_field as @message_field" do
      get :new, {}, valid_session
      assigns(:message_field).should be_a_new(MessageField)
    end
  end

  describe "GET edit" do
    it "assigns the requested message_field as @message_field" do
      message_field = MessageField.create! valid_attributes
      get :edit, {:id => message_field.to_param}, valid_session
      assigns(:message_field).should eq(message_field)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new MessageField" do
        expect {
          post :create, {:message_field => valid_attributes}, valid_session
        }.to change(MessageField, :count).by(1)
      end

      it "assigns a newly created message_field as @message_field" do
        post :create, {:message_field => valid_attributes}, valid_session
        assigns(:message_field).should be_a(MessageField)
        assigns(:message_field).should be_persisted
      end

      it "redirects to the created message_field" do
        post :create, {:message_field => valid_attributes}, valid_session
        response.should redirect_to(MessageField.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved message_field as @message_field" do
        # Trigger the behavior that occurs when invalid params are submitted
        MessageField.any_instance.stub(:save).and_return(false)
        post :create, {:message_field => {}}, valid_session
        assigns(:message_field).should be_a_new(MessageField)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        MessageField.any_instance.stub(:save).and_return(false)
        post :create, {:message_field => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested message_field" do
        message_field = MessageField.create! valid_attributes
        # Assuming there are no other message_fields in the database, this
        # specifies that the MessageField created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        MessageField.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => message_field.to_param, :message_field => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested message_field as @message_field" do
        message_field = MessageField.create! valid_attributes
        put :update, {:id => message_field.to_param, :message_field => valid_attributes}, valid_session
        assigns(:message_field).should eq(message_field)
      end

      it "redirects to the message_field" do
        message_field = MessageField.create! valid_attributes
        put :update, {:id => message_field.to_param, :message_field => valid_attributes}, valid_session
        response.should redirect_to(message_field)
      end
    end

    describe "with invalid params" do
      it "assigns the message_field as @message_field" do
        message_field = MessageField.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        MessageField.any_instance.stub(:save).and_return(false)
        put :update, {:id => message_field.to_param, :message_field => {}}, valid_session
        assigns(:message_field).should eq(message_field)
      end

      it "re-renders the 'edit' template" do
        message_field = MessageField.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        MessageField.any_instance.stub(:save).and_return(false)
        put :update, {:id => message_field.to_param, :message_field => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested message_field" do
      message_field = MessageField.create! valid_attributes
      expect {
        delete :destroy, {:id => message_field.to_param}, valid_session
      }.to change(MessageField, :count).by(-1)
    end

    it "redirects to the message_fields list" do
      message_field = MessageField.create! valid_attributes
      delete :destroy, {:id => message_field.to_param}, valid_session
      response.should redirect_to(message_fields_url)
    end
  end

end