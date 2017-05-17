class CheckoutController < WebpayController

  def index

#    @tbk = TbkNormal(15000,220,'http://localhost:3000/pages/tbknormal?option=result','http://localhost:3000/pages/tbknormal?option=end')
    @tbk = TbkOneClick("mmaecl","malba@mmae.cl",'http://localhost:3000/webpay/oneclick')
    p @tbk
  end

end
