
 Não usar esse arquivo
 Usar imported_files






class ImportFilesController < ApplicationController
require "docx"
def new
    @importedFile = ImportedFile.new
    @importedFile_show = ImportedFile.all



#    lines = IO.readlines("demetrius.txt","w+")
  #   puts lines.length
    # lines.each do |line|
    #@teste = line
     #end



# Create a Docx::Document object for our existing docx file
doc = Docx::Document.open('BMP.doc')

# Retrieve and display paragraphs
doc.paragraphs.each do |p|
  @teste =  p
end

  end

  def create
    @importedFile = ImportedFile.new(importedFile_params)
    @iimportedFile_show = importedFile.all

    if @importedFile.save
        redirect_to new_import_file_path , notice: " cadastrada com sucesso."
      else
        render action: :new
    end
  end

def edit
    @importedFile = importedFile.find(params[:id])

end

def update
      @importedFile = importedFile.find(params[:id])
      if @importedFile.update_attributes(importedFile_params)
           redirect_to new_import_file_path, notice: "editada com sucesso."
      else

            redirect_to new_import_file_path, :flash => { :error => "Erro ao editar o !" }
      end
end

def destroy
      @importedFile = importedFile.find(params[:id])
      @importedFile.destroy
      redirect_to new_import_file_path, notice: "Companhia removida com sucesso."
end

  private
  def importedFile_params
    params.require(:imported_file).permit(:id_user, :nome, :posto)
  end
end
