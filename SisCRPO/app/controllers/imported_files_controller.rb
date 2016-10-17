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
            @userdodemetrius = User.where(id_func: 2312794).first
            if !@userdodemetrius.nil?
                @tabela = ImportedFile.new
                 @tabela.graduation = row.cells[0]
                 @tabela.bulletin_name = row.cells[0]
                 @tabela.id_func = row.cells[0]
                 @tabela.opm = row.cells[0]
                 @tabela.save

              puts "Teste!! #{@userdodemetrius.name}"

              #@importedFile = ImportedFile.new(:user_id = row.cells[0])


            end
          end
          # row.cells.each do |cell|
          #   puts cell.text
          # end
        end


end

  def create
    @importedFile = ImportedFile.new(importedFile_params)
    @iimportedFile_show = ImportedFile.all

    if @importedFile.save
        redirect_to new_import_file_path , notice: "Boletim cadastrado com sucesso."
      else
        render action: :new
    end
  end
=begin
def edit
    @importedFile = importedFile.find(params[:id])

end

def update
      @importedFile = importedFile.find(params[:id])
      if @importedFile.update_attributes(importedFile_params)
           redirect_to new_import_file_path, notice: "Boletim editado com sucesso."
      else

            redirect_to new_import_file_path, :flash => { :error => "Erro ao editar o Boletim!" }
      end
end
=end
def destroy
      @importedFile = ImportedFile.find(params[:id])
      @importedFile.destroy
      redirect_to new_import_file_path, notice: "Boletim removido com sucesso."
end

  private
  def importedFile_params
    params.require(:imported_file).permit(:user_id, :imported_file_path, :title, :description, :graduation, :bulletin_name, :id_func, :opm, :name_func, :bulletin_date)
    #id | id_user | nome | posto | created_at | updated_at | user_id | imported_file_path |
     #title | description | graduation | bulletin_name | id_func | opm | name_func | bulletin_date
  end
end