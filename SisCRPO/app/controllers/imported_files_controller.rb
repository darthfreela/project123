class ImportedFilesController < ApplicationController
require "docx"
require "pry"


def new
    @importedFile = ImportedFile.new
    @importedFile_show = ImportedFile.all
    @user = User.all



    # Open docx

    doc = Docx::Document.open('boletim.docx')

    primeiraCelula = ""

    doc.tables.each do |table|

      table.rows.each do |row|


        if row.cells != "" && row.cells != "\n"

          primeiraCelula = row.cells
          break

        end

        if primeiraCelula != ""
          break
        end

      end

      if primeiraCelula != ""
          break
        end

    end


    puts "==============================="

    #primeiraCelula = primeiraCelula.to_s.gsub! '\n', ''
   # primeiraCelula = primeiraCelula.strip!

    primeiraCelula = primeiraCelula[0].to_s

    puts primeiraCelula

    puts "==============================="

    ######

    doc.paragraphs.each do |p|
      if !p.to_s[primeiraCelula]
        puts p
      else
        puts "FIMMMMMMMMMMMMMMMMMMMMM"
        break
      end
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