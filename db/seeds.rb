k = Koan.where(name: 'The Lemon', codepen_slug: 'yNaZoa').first_or_create
k.update({github_slug: 'the-lemon'})
k.update({client_email_body: 'Attached is the code for the lemon we\'re planning to use in the design. Only problem... It\'s really just a square.'})
s = Solution.find_or_initialize_by(koan_id: k.id)
s.codepen_slug = '4bffe27dddf0c2124557fddbe6d98932'
s.image = s.image_permalink
s.save
k.considerations << Consideration.find_or_create_by(point: "Is this solution crossbrowser friendly?")
k.considerations << Consideration.find_or_create_by(point: "Is CSS the best way to accomplish this goal?")
