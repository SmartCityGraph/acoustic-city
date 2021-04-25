module HomeHelper
  def get_color(point)
    case point.decibel
    when 0..50
      '#31fc03'
    when 51..70
      '#fce803'
    when 70..999
      '#fc0320'
    else
      '#030303'
    end
  end
end
