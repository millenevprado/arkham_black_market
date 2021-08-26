module CategoryBackgroundHelper
  def background_url(category)
    case category
    when 'Pull or Prank'
      'https://static1.srcdn.com/wordpress/wp-content/uploads/Batman-vs-The-Joker-in-The-Killing-Joke.png?q=50&fit=crop&w=960&h=500&dpr=1.5'
    when 'Poison'
      'https://c4.wallpaperflare.com/wallpaper/967/767/746/comics-birds-of-prey-bodysuit-brown-hair-wallpaper-preview.jpg'
    when 'Meele Weapon'
      'https://cdn.wallpapersafari.com/37/87/MLIqOP.jpg'
    when 'Explosives'
      'https://images3.alphacoders.com/587/587233.jpg'
    when 'Fire Guns'
      'https://kanto.legiaodosherois.com.br/w760-h398-cfill/wp-content/uploads/2020/09/legiao_WjkySMHFL83Z.jpg.jpeg'
    when 'Hallucinogenic'
      'https://fictionhorizon.com/wp-content/uploads/2020/12/robins-hallucinations-from-the-fear-toxin-new-52-1.jpg'
    end
  end
end
