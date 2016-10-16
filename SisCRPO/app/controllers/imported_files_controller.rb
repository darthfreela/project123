class ImportedFilesController < ApplicationController
require "docx"

def new
    @importedFile = ImportedFile.new
    @importedFile_show = ImportedFile.all
    @user = User.all

    # Open docx
        doc = Docx::Document.open('boletim.docx')
        first_table = doc.tables[0]
        puts first_table.row_count
        first_table.rows.each do |row| # Row-based iteration
          puts row.cells.count
          if row.cells.count == 5
            #puts "Grad. #{row.cells[0]}"
            @userdodemetrius = User.where(id_func: 2314312).first
            if !@userdodemetrius.nil?
              puts "UUUIIIIII CACTCHORROOO!! #{@userdodemetrius.name}"
            end
          end
          # row.cells.each do |cell|
          #   puts cell.text
          # end
        end

end

  def create
    @importedFile = ImportedFile.new(importedFile_params)
    @iimportedFile_show = importedFile.all

    if @importedFile.save
        redirect_to new_import_file_path , notice: "Companhia cadastrada com sucesso."
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
           redirect_to new_import_file_path, notice: "Companhia editada com sucesso."
      else

            redirect_to new_import_file_path, :flash => { :error => "Erro ao editar o Companhia!" }
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