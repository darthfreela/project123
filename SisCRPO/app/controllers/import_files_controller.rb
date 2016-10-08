class ImportFilesController < ApplicationController
def new
    @importfile = ImportFile.new
    @importfile_show = ImportFile.all

  end

  def create
    @importfile = ImportFile.new(importfile_params)
    @iimportfile_show = ImportFile.all

    if @importfile.save
        redirect_to new_import_file_path , notice: "Companhia cadastrada com sucesso."
      else
        render action: :new
    end
  end

def edit
    @importfile = ImportFile.find(params[:id])

end

def update
      @importfile = ImportFile.find(params[:id])
      if @importfile.update_attributes(importfile_params)
           redirect_to new_import_file_path, notice: "Companhia editada com sucesso."
      else

            redirect_to new_import_file_path, :flash => { :error => "Erro ao editar o Companhia!" }
      end
end

def destroy
      @importfile = ImportFile.find(params[:id])
      @importfile.destroy
      redirect_to new_import_file_path, notice: "Companhia removida com sucesso."
end

  private
  def importfile_params
    params.require(:importfile).permit(:id_user, :nome, :posto)
  end
end


