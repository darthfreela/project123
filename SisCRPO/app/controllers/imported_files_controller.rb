class ImportedFilesController < ApplicationController
require "docx"
require "nokogiri"

def new
    @importedFile = ImportedFile.new
    @importedFile_show = ImportedFile.all
    @user = User.all


#f=File.open('BMP.doc')
#doc =Nokogiri::XML(f)
#f.close
#@teste = doc





#doc = Docx::Document.open('boletim.docx')
  #     doc.paragraphs.each do |p|
       # puts p.to_html
    #  @teste = p.to_html
      #  end



#lines = IO.readlines("demetrius.txt","w+")
  #puts lines.length
   #lines.each do |line|

 #if line.include?('2320789')
  #  @teste = line
#else
  #  @teste =1
#end
#end

       #Open .txt
      #lines = IO.readlines("BMP.doc","w+")
      #puts lines.length
      #lines.each do |line|
      #@teste = line
      #end

      #akii demetrius
      # Open docx
        #doc = Docx::Document.open('boletim.docx')
        #doc.paragraphs.each do |p|
        #puts p
        #@teste = p
        #end

        #doc.bookmarks.each_pair do |bookmark_name, bookmark_object|
        #puts bookmark_name
        #end

      #  doc = Docx::Document.open('boletim.docx')
       # doc.paragraphs.each do |p|
       # @teste = p

        #first_table = doc.tables[0]
        #puts first_table.row_count
        #puts first_table.column_count
        #puts first_table.rows[0].cells[0].text
        #puts first_table.columns[0].cells[0].text
        #end

      #  doc = Docx::Document.open('boletim.docx')
      #  first_table = doc.tables[0]
      #  puts first_table.row_count
      #  puts first_table.column_count
      #  puts first_table.rows[0].cells[0].text
      #  puts first_table.columns[0].cells[0].text

      # Row-based iteration
      #  Iterate through tables
      #  doc.tables.each do |table|
      #    table.rows.each do |row|
      #      row.cells.each do |cell|
      #        puts cell.text
      #      end
      #   end

        # Column-based iteration
        #  table.columns.each do |column|
        #    column.cells.each do |cell|
        #      puts cell.text
        #    end
        # end
      #  end

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