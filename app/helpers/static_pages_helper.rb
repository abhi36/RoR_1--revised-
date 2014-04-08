module StaticPagesHelper
  
  def decideTitle(title)
    baseName = 'RoR Sample App'
    if title.empty?
      baseName
    else
      "#{baseName} | #{title}"
    end
  end
  
end
