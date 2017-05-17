class Pay::WebpayController < PayController
  require_relative '../../payments/webpay/webpay'
  skip_before_action :verify_authenticity_token

  def index
    webpay = WebPay.new
    @tbk = webpay.TbkNormal(params[:monto], 25,request.base_url+'/pay/webpay',request.base_url+'/pay/webpay')
    @tbk[:token_ws]
  end

  def create
    webpay = WebPay.new
    if params[:TBK_TOKEN]
      render json:params
    else
      @tbk  = webpay.TbkNormalGet(params[:token_ws])
    end

  end


end
