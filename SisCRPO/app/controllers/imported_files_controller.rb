class ImportedFilesController < ApplicationController
require "docx"
require "pry"


def new
    @importedFile = ImportedFile.new
    @importedFile_show = ImportedFile.all
    @user = User.all



    # Open docx
#<<<<<<< HEAD
    doc = Docx::Document.open('boletim.docx')

    i = 0

    doc.paragraphs.each do |p|
       i = i + 1 
       # if i <= 7
       #   #puts p
       # end
       if p.to_s["janeiro"]
        puts p
       end

       #if p.to_s["I #{196.chr}"]
       if p.to_s["CLASSIFICAÇÃO DE PRAÇA"]
         puts p
         puts i
         a = 0
         doc.paragraphs.each do |chupa_juliano|
          a += 1
            if a == i+2
              puts chupa_juliano
            end
         end
      end



      
      # if i == 17
      #   puts p
      # end


    end
    #<<<Consulta funcionando>>>>
    doc.tables.each do |table|

      table.rows.each do |row| # Row-based iteration

      # if row.cells.count != 5
      #   next
      # end

      # Separa os campos
      graduation = row.cells[0]
      name = row.cells[1]
      id = row.cells[2]
      opm = row.cells[3]
      
      # Bsuca usuario do banco
      userDb = User.where(id_func: id.to_s.to_i).first

      # Ignora se não encontra
      if userDb.nil?
        next
      end

      puts userDb.name
      
      # if !@userdodemetrius.nil?
      #     @tabela = ImportedFile.new
      #      @tabela.graduation = row.cells[0]
      #      @tabela.bulletin_name = row.cells[0]
      #      @tabela.id_func = row.cells[0]
      #      @tabela.opm = row.cells[0]
      #      @tabela.save

      #   puts "Teste!! #{@userdodemetrius.name}"

      #   #@importedFile = ImportedFile.new(:user_id = row.cells[0])


      # end

      # row.cells.each do |cell|
      #   puts cell.text
      # end
    end
  end
      # <<<end Consulta funcionando>>>>
# =======
#         doc = Docx::Document.open('boletim.docx')
#         first_table = doc.tables[0]
#         puts first_table.row_count
#         first_table.rows.each do |row| # Row-based iteration
#           puts row.cells.count
#           if row.cells.count == 5
#             #puts "Grad. #{row.cells[0]}"
#             @userdodemetrius = User.where(id_func: 2312794).first
#             if !@userdodemetrius.nil?
#                 @tabela = ImportedFile.new
#                  @tabela.graduation = row.cells[0]
#                  @tabela.bulletin_name = row.cells[0]
#                  @tabela.id_func = row.cells[0]
#                  @tabela.opm = row.cells[0]
#                  @tabela.save

#               puts "Teste!! #{@userdodemetrius.name}"

#               #@importedFile = ImportedFile.new(:user_id = row.cells[0])


#             end
#           end
#           # row.cells.each do |cell|
#           #   puts cell.text
#           # end
#         end
# >>>>>>> 60d4743d4fb213590ec80c8076b42d2d11b058e9


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