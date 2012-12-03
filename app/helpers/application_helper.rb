module ApplicationHelper

  def semestre value, full=false
    full ? t("semestre.f#{value}") : t("semestre.s#{value}")
  end

  def semestre_icon value
    content_tag :i, " ", :class => value.to_i == 1 ? "icon-leaf" : "icon-certificate"
  end

end
