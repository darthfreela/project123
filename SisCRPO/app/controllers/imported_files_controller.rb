class ImportedFilesController < ApplicationController
  	def new
    	@imported_file = ImportedFile.new
    	@imported_file_show = ImportedFile.all
  	end

  	def create
    	@imported_file = ImportedFile.new(imported_file_params)
    	@imported_file_show = ImportedFile.all
  	end

	def edit
    	@imported_file = ImportedFile.find(params[:id])
	end

	def update
      	@imported_file = ImportedFile.find(params[:id])
      	if @imported_file.update_attributes(imported_file_params)
           redirect_to new_imported_file_path, notice: "Arquivo importatdo com suscesso."
      	else

            redirect_to new_imported_file_path, :flash => { :error => "Erro ao Importar Arquivo" }
      	end
	end

	def destroy
      	@imported_file = ImportedFile.find(params[:id])
      	@imported_file.destroy
      	redirect_to new_imported_file_path, notice: "Arquivo removido com sucesso."
	end

  	private
<<<<<<< HEAD
  	def imported_file_params
    	params.require(:imported_file).permit()
=======
  	def importedFile_params
    	params.require(:imported_file).permit(:imported_file,:generated_file,:log,:user_id)
>>>>>>> 106bba38d43d8d0deb22bb5581db8d8a4073420d
  	end
end
