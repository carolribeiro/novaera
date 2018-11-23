class NoticiasController < ApplicationController
  
  def show
    @noticias = Noticia.find(params[:id])
    #@noticias = Noticia.all :joins => :usuarios
  end
  
end
