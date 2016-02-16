module DotaHelper
  def dota_attribute_icon_tag(attribute, dimensions)
    return image_tag('dota_icons/attributes/' + attribute + '.png', width: dimensions, height: dimensions)
  end
end