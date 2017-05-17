class Webpay::OneclickController < WebpayController
  skip_before_action :verify_authenticity_token

  def index

    render json:TbkOneClick_pay(rand(1111111..9999999),"bc9dd3ce-60ce-447e-98af-218c683f12ee","username",9200);

  end
  def create
    render json:TbkOneClick_finish(params[:TBK_TOKEN])
  end
end
