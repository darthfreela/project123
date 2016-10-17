class TextInformativesController < ApplicationController
	def new
    	@text_informative = TextInformative.new
    	@text_informative_show = TextInformative.all
  	end

  	def edit
      @botao = 'edit'
    	@text_informative = TextInformative.find(params[:id])
  	end

  def create
    	@text_informative = TextInformative.new(text_informative_params)
    	@text_informative_show = TextInformative.all
    	if @text_informative.save
      		redirect_to new_text_informative_path, notice: "Texto Informativo cadastrado com sucesso."
    	else
      		render action: :new
    	end
	end

  	def update
    	@text_informative = TextInformative.find(params[:id])
    	if @text_informative.update_attributes(text_informative_params)
	        redirect_to new_text_informative_path, notice: "Texto Informativo cadastrado com sucesso."
    	else
	        redirect_to new_text_informative_path, :flash => { :error => "Erro ao editar o texto informativo!" }
    	end
	end

  	def destroy
    	@text_informative = TextInformative.find(params[:id])
    	@text_informative.destroy
    	redirect_to new_text_informative_path, notice: "Texto Informativo cadastrado com sucesso."
  	end

  	private
  	def text_informative_params
	    params.require(:text_informative).permit(:type, :description)
  	end
end
