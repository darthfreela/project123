class ImportedFileController < ApplicationController
  def new
    @imported_files = ImportedFile.new
    @imported_files_show = ImportedFile.all
  end

  def create
    @imported_files = ImportedFile.new(imported_file_params)
    @imported_files_show = imported_file.all
  end

def edit
    @imported_files = ImportedFile.find(params[:id])
end

def update
      @imported_files = ImportedFile.find(params[:id])
      if @imported_files.update_attributes(imported_file_params)
           redirect_to new_imported_file_path, notice: "Arquivo importatdo com suscesso."
      else

            redirect_to new_imported_file_path, :flash => { :error => "Erro ao Importar Arquivo" }
      end
end

def destroy
      @imported_files = ImportedFile.find(params[:id])
      @profile.destroy
      redirect_to new_imported_file_path, notice: "Arquivo removido com sucesso."
end

  private
  def imported_file_params
    params.require(:imported_file).permit()
  end
end
