module ApplicationHelper
  def titulo_page_header(page_title, page_subtitulo = nil)
    content_for :titulo_page_header do
      content_tag :h1 do
        concat(page_title.to_s)
        concat(content_tag(:small, page_subtitulo.to_s).html_safe) if page_subtitulo.present?
      end
    end
  end

  def ative_se_pagina_atual(path, caminho_exato = false)
    'active' if eh_controller_da_pagina_atual? path, caminho_exato
  end

  def eh_controller_da_pagina_atual?(path, caminho_exato)
    if caminho_exato
      controller.request.fullpath.eql? path
    else
      controller.request.fullpath.start_with? path
    end
  end

  def trata_erro_validacao(campo)
    return '' unless campo.present?

    label_collection = campo.collect do |erro|
      content_tag :label, class: 'control-label' do
        concat(content_tag(:i, nil, class: 'fa fa-warning').html_safe)
        concat(' ')
        concat(erro)
      end
    end

    label_collection.join.html_safe
  end
end
