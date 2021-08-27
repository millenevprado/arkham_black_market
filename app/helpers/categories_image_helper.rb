module CategoriesImageHelper
  def category_image(category)
    case category
    when 'Poison'
      "https://cryptobotanicalfindings.files.wordpress.com/2011/11/poison-ivy.jpg"
    when 'Fire Guns'
      "https://pro2-bar-s3-cdn-cf6.myportfolio.com/561f892815925c323fbf4261410bb1ec/006157d1-4c43-4c45-a419-9c948d27420d_rw_1200.jpg?h=e071d579976bb74c883858e8d7cbcd04"
    when 'Meele Weapon'
      "https://i.redd.it/oggzwfdev5g41.jpg"
    when 'Explosives'
      "https://dcn-wp.s3.us-west-1.amazonaws.com/wp-content/uploads/2014/07/04155717/secret-origins-4-harley-quinn-cover.png"
    when 'Hallucinogenic'
      "https://cdn.staticneo.com/w/batman/thumb/ScaryGas.jpg/300px-ScaryGas.jpg"
    when 'Pull or Prank'
      "https://pm1.narvii.com/6336/6cdf704f958612dd5f2c678e1c6d7401327b403c_hq.jpg"
    end
  end
end
