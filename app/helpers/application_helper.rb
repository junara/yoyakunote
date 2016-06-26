module ApplicationHelper
  def qrcode_svg(text, options = {})
    RQRCode::QRCode.new(text).as_svg(options).html_safe
  end

  def qrcode_png(text, _options = {})
    urltext = 'http://yoyakunote.herokuapp.com/' + text.to_s
    qr = RQRCode::QRCode.new(text)
    png = qr.to_img
    png.resize(150, 150).save("public/qrcode/#{text}.png", interlace: true)
    image_tag("/qrcode/#{text}.png", alt: text)
  end
end
