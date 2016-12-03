class ImportedFilesPdfController < ApplicationController
	    include ApplicationHelper

    TABLE_HEADER = "<tr>
                                    <th>No EMBM</th>
                                    </tr>
                    <tr>
                                    <th>Graduação</th>
                                    <th>Nome</th>
                                    <th>Id Func</th>
                                    <th>OPM de Classificação</th>
                                    </tr>"
  def new
  	@filePDF = ImportedFilesPdf.all
  end

  def generate_pdf_by_html
    @replacements_array = ImportedFile.where(title: !nil)
    title = "map_#{Time.now}.pdf"
    kit = PDFKit.new(generate_pdf_html(@replacements_array), :page_size => 'a4', :orientation => 'Landscape')
    kit.to_pdf(Rails.root.join('imported_file_pdf', title))
    save_in_data_base title
    redirect_to new_import_file_path, notice: "PDF gerado com sucesso."
   end

   def save_in_data_base(title)
      tmp = ImportedFilesPdf.new
      tmp.title = title
      tmp.path = "/import_file_pdf/#{title}"
      tmp.save
   end

   def generate_pdf_html(replacements)
        options = ImportedFilesPdf.first
        rows = ''
        header = "<span>
                            <b>ESTADO DO RIO GRANDE DO SUL</br>
                            SECRETARIA DE SEGURAN&Ccedil;A P&Uacute;BLICA </br>
                            BRIGADA MILITAR - CRPO SERRA --- <b>#{options.date_tag}</b>
                            </b>
                            

                        </span>"
        check_header ="<table>
                                    <tr>
                                        <td <b>#{options.title_tag}</b>
                                        </td>

                                        <td <b>#{options.description_tag}</b></td>
                                        
                                    </tr>"
        #criar tela html
       replacements.each do | r |
            cadastrados = ImportedFileUser.where(user_id !nil)
            nao_cadastrados = ImportedFileUser.where(id_func_temp !nil)
            
            rows = "#{rows} <tr>
                                            <td> #{cadastrados.graduation} </td>
                                            <td> #{cadastrados.name} </td>
                                            <td> #{cadastrados.user_id} </td>
                                            <td> #{cadastrados.opm} </td>

                                            <td> #{nao_cadastrados.graduation} </td>
                                            <td> #{nao_cadastrados.name} </td>
                                            <td> #{nao_cadastrados.id_func_temp} </td>
                                            <td> #{nao_cadastrados.opm} </td>
                                        </tr>"
       end
       return "<html>
                        <style type='text/css'>
                            table{
                                width: 100%;
                            }
                            table, th, td {
                                border: 1px solid black;
                                border-collapse: collapse;
                            }
                        </style>
                        #{header}
                        #{check_header}
                        #{TABLE_HEADER}
                        #{rows}
                        </table>
                    </html>"
   end

  def edit
  end
end
