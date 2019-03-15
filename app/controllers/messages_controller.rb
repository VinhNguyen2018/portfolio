class MessagesController < ApplicationController
  def new
    raise
    @message = Message.new
  end

  def create
    @firstname = message_params[:firstname]
    @lastname = message_params[:lastname]
    @email = message_params[:email]
    @body = message_params[:message]
    @message = Message.new(firstname: @firstname, lastname: @lastname, email: @email, message: @body)
    if @message.valid?
      UserMailer.contact_form(@message).deliver # Je vais expliquer cette ligne juste apres...
      redirect_to root_path, flash: { success: t(:"create.message_has_been_sent") }
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:firstname, :lastname, :email, :message)
  end
end
