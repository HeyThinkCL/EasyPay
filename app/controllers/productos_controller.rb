class ProductosController < ApplicationController
  def index
    @productos = Producto.all
    # @total = 0
    # @productos.each do |producto|
    #   @total += producto.precio
    # end
  end

  def new

  end
end

#
# <table class="table table-bordered">
# <thead>
# <tr>
# <th>#</th>
# <th>Producto</th>
#                     <th>Precio</th>
# </tr>
#                   </thead>
# <tbody>
# <% @productos.each do |producto| %>
#                   <tr>
# <th scope="row"><%=producto.id%></th>
#                     <td><%=producto.nombre%></td>
#                     <td><%=producto.precio%></td>
# </tr>
#                   <%end%>
#                   <tr>
#                     <td colspan="2"></td>
#                     <td></td>
#                   </tr>
#                   </tbody>
#                 </table>