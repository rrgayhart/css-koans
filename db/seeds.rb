k = Koan.where(name: 'The Lemon', codepen_slug: 'yNaZoa').first_or_create
s = Solution.find_or_initialize_by(koan_id: k.id)
s.codepen_slug = '4bffe27dddf0c2124557fddbe6d98932'
s.image = s.image_permalink
s.save
