class ImportedFileController < ApplicationController
  	def new
    	@importedFile = ImportedFile.new
    	@importedFile_show = ImportedFile.all
  	end

  	def create
    	@importedFile = ImportedFile.new(importedFile_params)
    	@importedFile_show = ImportedFile.all
  	end

	def edit
    	@importedFile = ImportedFile.find(params[:id])
	end

	def update
      	@importedFile = ImportedFile.find(params[:id])
      	if @importedFile.update_attributes(importedFile_params)
           redirect_to new_imported_file_path, notice: "Arquivo importatdo com suscesso."
      	else

            redirect_to new_imported_file_path, :flash => { :error => "Erro ao Importar Arquivo" }
      	end
	end

	def destroy
      	@importedFile = ImportedFile.find(params[:id])
      	@importedFile.destroy
      	redirect_to new_imported_file_path, notice: "Arquivo removido com sucesso."
	end

  	private
  	def importedFile_params
    	params.require(:imported_files).permit()
  	end
end
