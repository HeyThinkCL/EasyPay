# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
   inflect.irregular 'producto', 'productos'
   inflect.irregular 'cliente', 'clientes'
   inflect.irregular 'proveedor', 'proveedores'
   inflect.irregular 'tbknormal', 'tbknormal'
   inflect.irregular 'tbkoneclick', 'tbkoneclick'
   inflect.irregular 'oneclick', 'oneclick'
   inflect.irregular 'tbkpatpass', 'tbkpatpass'
   inflect.irregular 'pago', 'pagos'
   inflect.irregular 'transaccion', 'transacciones'
   inflect.irregular 'checkout', 'checkout'
   inflect.irregular 'person', 'people'




#   inflect.uncountable %w( fish sheep )
end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
