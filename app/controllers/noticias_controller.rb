class NoticiasController < ApplicationController
  
  def show
    @noticia = Noticia.all.order("created_at DESC") # SELECT * FROM Noticia ORDER BY created_at DESC
    @noticias = Noticia.find(params[:id])
    #@noticias = Noticia.all :joins => :usuarios
  end
  
end
