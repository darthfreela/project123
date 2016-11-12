class ImportedFilesController < ApplicationController
require "docx"
require "pry"


def new
    @importedFile = ImportedFile.new
    @importedFile_show = ImportedFile.all
    @user = User.all


    @tabela = ImportedFile.new




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
           @tabela.date = regexDate
           end
         regexTitle = /[A-Z]{1,4}\s\W\s.*/.match(p.to_s)
           if !regexTitle.nil?
            @tabela.title = regexTitle
          end


            if !regexTitle.nil?
            @tabela.title = regexTitle
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
    @tabela.description = regexContent
  end
  @tabela.save

  id_boletim = @tabela.id

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
        puts "akiakiaksiadkasidsaidkasdisadkiasdias"
      end

if id.to_s.to_i >0
      # Bsuca usuario do banco
      userDb = User.where(id_func: id.to_s.to_i).first


      # Ignora se não encontra
      if userDb.nil?
        next
      end

      @tabela_user = ImportedFilesUser.new
            @tabela_user.graduation = graduation
             @tabela_user.name = name
            # @tabela_user.user_id = id.to_s.to_i
             @tabela_user.opm = opm
             @tabela_user.imported_file_id = id_boletim

             if userDb ==  id.to_s.to_i
              @tabela_user.id_func_temp = id.to_s.to_i
            else
              @tabela_user.user_id = id.to_s.to_i
             end
             @tabela_user.save

      puts"ccccccccccccc"
      puts userDb.name
      puts "dddddddddddddddd"



        #if !@userdodemetrius.nil?
           # @tabela = ImportedFile.new
             # @tabela.graduation = row.cells[0]
             # @tabela.name = row.cells[0]
             # @tabela.user_id = row.cells[0]
             # @tabela.opm = row.cells[0]
#             #@tabela.save
 #puts "aaaaaaaaaaaaaaaaa"
   #       puts "Teste!! #{@userdodemetrius.name}"
  #puts "bbbbbbbbbbbbb"

         #@importedFile = ImportedFile.new(:user_id = row.cells[0])



#end
end

    end
  end


end

def create
    @tabela = ImportedFile.new(importedFile_params)
   # @tabela_show = ImportedFile.all

    @tabela_user = ImportedFileUser.new(importedFileUser_params)
    #@tabela_show = ImportedFile.all

    if @tabela.save
        @tabela_user = ImportedFilesUser.new(importedFileUser_params)
        if @imported_file_user.save
            redirect_to new_import_file_path , notice: "Boletim cadastrado com sucesso."
        else
          destroy
        end
      else
        render action: :new
    end
  end

 # def create
   # @importedFile = ImportedFile.new(importedFile_params)
  #  @iimportedFile_show = ImportedFile.all

    #if @importedFile.save
       # @imported_file_user = ImportedFilesUser.new(importedFileUser_params)
        #if @imported_file_user.save
          #  redirect_to new_import_file_path , notice: "Boletim cadastrado com sucesso."
        #else
         # destroy
       # end
     # else
      #  render action: :new
    #end
  #end

def destroy
      @importedFile = ImportedFile.find(params[:id])
      @importedFile.destroy
      redirect_to new_import_file_path, notice: "Boletim removido com sucesso."
end

  private
  def importedFile_params
    params.require(:imported_file).permit(:user_id, :imported_file_path, :title, :description, :date, :description)
  #user_id ,  imported_file_path , title , description , bulletin_date date,

  end

  private
  def importedFileUser_params
    params.require(:imported_files_user).permit(:id_func_temp, :user_id, :imported_file_id, :graduation, :name, :opm)

  end
end