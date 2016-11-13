class ImportedFilesController < ApplicationController
require "docx"
require "pry"


def new
    @importedFile = ImportedFile.new
    @importedFile_show = ImportedFile.all
    @user = User.all
    @importedFile_user = ImportedFilesUser.new
    @importedFile_user_show = ImportedFilesUser.all

  #  @tabela = ImportedFile.new aki 111111111111111




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

    primeiraCelula = primeiraCelula[0].to_s


i=0
texto = ''
regexTitle = ' '
regexAux =''
    doc.paragraphs.each do |p|
      i = i+1

      if !p.to_s[primeiraCelula]

         texto = texto + ' ' + p.to_s


         regexDate = /Em\s[0-9]{2}\sde\s\w*\sde\s[0-9]{4}./.match(p.to_s)
           if !regexDate.nil?
           @importedFile.date = regexDate
           end
         regexTitle = /[A-Z]{1,4}\s\W\s.*/.match(p.to_s)
           if !regexTitle.nil?
            @importedFile.title = regexTitle
          end


            if !regexTitle.nil?
            @importedFile.title = regexTitle
          end

         puts regexDate
         puts regexTitle

      else
     #   puts "FIMMMMMMMMMMMMMMMMMMMMM"
        break
      end
   end

#puts texto
regexContent = /[A-Z]{1,4}\s\W\s.*/.match(texto)
  if !regexContent.nil?
    @importedFile.description = regexContent
  end
  @importedFile.save

  id_boletim = @importedFile.id

puts regexContent
#puts "Fim regex content"


doc.tables.each do |table|

      table.rows.each do |row| # Row-based iteration


      # Separa os campos
      graduation = row.cells[0]
      name = row.cells[1]
      id = row.cells[2]
      opm = row.cells[3]


if opm.to_s["CRPO/Serra"]

 @importedFile_user = ImportedFilesUser.new
            @importedFile_user.graduation = graduation
             @importedFile_user.name = name
            # @tabela_user.user_id = id.to_s.to_i
             @importedFile_user.opm = opm
             @importedFile_user.imported_file_id = id_boletim
              @importedFile_user.id_func_temp = id.to_s.to_i

             @importedFile_user.save

      puts"Não existe no bd"
      puts  name
      puts "Não existe no bd"
end

if id.to_s.to_i >0
      # Bsuca usuario do banco
      userDb = User.where(id_func: id.to_s.to_i).first
      # Ignora se não encontra
      if userDb.nil?
        next
      end


      @importedFile_user = ImportedFilesUser.new
            @importedFile_user.graduation = graduation
             @importedFile_user.name = name
            # @tabela_user.user_id = id.to_s.to_i
             @importedFile_user.opm = opm
             @importedFile_user.imported_file_id = id_boletim

             if userDb ==  id.to_s.to_i
              @importedFile_user.id_func_temp = id.to_s.to_i
            else
              @importedFile_user.user_id = id.to_s.to_i
             end
             @importedFile_user.save

      puts"Existe no Db"
      puts userDb.name
      puts "Existe no Db"






          end
       end
    end
  end
end

def create
    @importedFile = ImportedFile.new(importedFile_params)
    @importedFile_show = ImportedFile.all

    @importedFile_user = ImportedFilesUser.new(importedFileUser_params)
    @importedFile_user_show = ImportedFilesUser.all

    if @importedFile.save
        @importedFile_user = ImportedFilesUser.new(importedFileUser_params)
        if @imported_file_user.save
            redirect_to new_imported_files_path , notice: "Boletim cadastrado com sucesso."
        else
          destroy
        end
      else
        render action: :new
    end
  end

def destroy
      @importedFile = ImportedFile.find(params[:id])
      @importedFile.destroy
      redirect_to new_imported_file_path, notice: "Boletim removido com sucesso."
end

  private
  def importedFile_params
    params.require(:imported_file).permit(:user_id, :imported_file_path, :title, :description, :date)
  #user_id ,  imported_file_path , title , description , bulletin_date date,

  end

  private
  def importedFileUser_params
    params.require(:imported_files_user).permit(:id_func_temp, :user_id, :imported_file_id, :graduation, :name, :opm)

  end
