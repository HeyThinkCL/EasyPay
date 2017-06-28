class OrdenesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index

  end

  def show
    @orden = Orden.find(params[:id])
    @comercio = Comercio.find(@orden.comercios.first)
    @monto = "/pay/webpay?monto=#{@orden.monto.to_s}"
  end

  def new

  end

  def create
    @usuario = Usuario.take
    @comercio = Comercio.take
    @orden = Orden.new(:monto => params[:monto],:usuario => @usuario)
    p @orden
    params[:productos].each do |producto|
      @producto = Producto.find(producto)
      Ocp.create(:comercio => @comercio,:orden => @orden,:producto => @producto)
    end
    if @orden.save
      redirect_to @orden
    end
  end

end
