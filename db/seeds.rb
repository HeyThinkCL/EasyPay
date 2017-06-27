# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@comercio = Comercio.create(:nombre => 'HeyThink')
Producto.create(:nombre => 'Innovacolegio',:precio => 75290,:comercio => @comercio)
Producto.create(:nombre => 'InboxShot',:precio => 55350,:comercio => @comercio)
Producto.create(:nombre => 'Suvenciones', :precio => 97890,:comercio => @comercio)
Producto.create(:nombre => 'Patentes',:precio => 63540,:comercio => @comercio)
Usuario.create(:nombre => 'Municipalidad de Ñuñoa',:email => 'nunoa@mail.com',:comercio => @comercio,:password => '123456')