module HomeHelper
  def get_color(point)
    case point.decibel
    when 30..60
      '#31fc03'
    when 61..90
      '#fce803'
    when 90..999
      '#fc0320'
    else
      '#030303'
    end
  end
end
