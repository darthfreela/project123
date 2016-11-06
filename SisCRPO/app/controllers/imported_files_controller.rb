class ImportedFilesController < ApplicationController
require "docx"
require "pry"


def new
    @importedFile = ImportedFile.new
    @importedFile_show = ImportedFile.all
    @user = User.all

    @tabela = ImportedFile.new
      #

    # Open docx
   # regexTitle = Em\s[0-9]{2}\sde\s\w*\sde\s[0-9]{4}.

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


    #puts "==============================="

    #primeiraCelula = primeiraCelula.to_s.gsub! '\n', ''
   # primeiraCelula = primeiraCelula.strip!

    primeiraCelula = primeiraCelula[0].to_s

    #puts primeiraCelula

    #puts "==============================="

    ######
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
           @tabela.bulletin_date = regexDate
           end
         regexTitle = /[A-Z]{1,4}\s\W\s.*/.match(p.to_s)
           if !regexTitle.nil?
            @tabela.title = regexTitle
          end




         # regexContent = /#{regexTitle}(.*\n)+/.match(p.to_s)

         puts regexDate
         puts regexTitle
       #  puts regexContent





      else
        puts "FIMMMMMMMMMMMMMMMMMMMMM"
        break

      end
   end

#regexTitle = regexTitle.to_s.delete("\n")
#puts regexTitle
#if texto.size > 0
  #texto.insert(texto.index(regexTitle), '&')
#end
puts "Akiiiiii -------------------"
puts texto
puts "Akiiiiii ----------------"
regexContent = /[A-Z]{1,4}\s\W\s.*/.match(texto)
  if !regexContent.nil?

  end
puts regexContent
puts "Fim regex content"


#doc.tables.each do |table|

      #table.rows.each do |row| # Row-based iteration


      # Separa os campos
      #graduation = row.cells[0]
      #name = row.cells[1]
      #id = row.cells[2]
      #opm = row.cells[3]

      # Bsuca usuario do banco
      #userDb = User.where(id_func: id.to_s.to_i).first

      # Ignora se não encontra
      #if userDb.nil?
        #next
      #end

      #puts userDb.name

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



# aki começa diogo

#doc.paragraphs.each do |p|
 # @teste= p.to_html
#end





    #end
  #end


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
    params.require(:imported_file).permit(:user_id, :imported_file_path, :title, :bulletin_date)
    #| user_id |imported_file_path   | title | description | bulletin_date

  end
end