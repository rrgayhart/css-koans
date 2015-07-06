k = Koan.where(name: 'The Lemon').first_or_create
p = Problem.find_or_initialize_by(koan_id: k.id)
p.update({codepen_slug: 'yNaZoa'})
