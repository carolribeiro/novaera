class ContatoController < ApplicationController
  def new
      @contato = Contato.new
  end
  
  def create
    @contato = Contato.new message_params
    if @contato.valid?
      MessageMailer.contato(@contato).deliver_now
      redirect_to contato_new_path, notice: "Mensagem enviada!"
      
    else
      render :new
    end
  end     
  
  private
  def message_params
    params.require(:contato).permit(:name, :email, :body)
  end
  
end
