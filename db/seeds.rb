k = Koan.where(name: 'The Lemon').first_or_create
p = Problem.find_or_initialize_by(koan_id: k.id)
p.update({codepen_slug: 'yNaZoa'})
s = Solution.find_or_initialize_by(koan_id: k.id)
s.codepen_slug = '4bffe27dddf0c2124557fddbe6d98932'
s.image = s.image_permalink
s.save
