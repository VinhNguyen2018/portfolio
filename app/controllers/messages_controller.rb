class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new params[:message]
    if @contact.valid?
      Mailer.contact_form(@message).deliver # Je vais expliquer cette ligne juste apres...
      redirect_to root_path, flash: { success: t(:"create.message_has_been_sent") }
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :body)
  end
end
