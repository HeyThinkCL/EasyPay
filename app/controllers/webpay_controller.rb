class WebpayController < ApplicationController
  require 'libwebpay'
  def getWebPay(certificates)
    libwebpay = Libwebpay.new
    config = libwebpay.getConfiguration
    config.commerce_code = certificates.commerce_code
    config.environment = certificates.environment
    config.private_key = certificates.private_key
    config.public_cert = certificates.public_cert
    config.webpay_cert = certificates.webpay_cert
   libwebpay.getWebpay(config)
  end
  def TbkNormal(amount, buyOrder,urlReturn,urlFinal, sessionId="B34GHJI")
    require_relative '../certificates/certnormal'
    return  getWebPay(CertNormal.new).getNormalTransaction.initTransaction(amount, buyOrder, sessionId, urlReturn, urlFinal)
  end
  def TbkNormalAnular(authorizationCode, authorizedAmount, buyOrder, nullifyAmount)
    require_relative '../certificates/certnormal'
    certificates = CertNormal.new
    return  getWebPay(certificates).getNullifyTransaction.nullify(authorizationCode, authorizedAmount, buyOrder, nullifyAmount, certificates.commerce_code)
  end
  def TbkOneClick(username, email,urlReturn)
    require_relative '../certificates/certoneclick'
    return getWebPay(CertOneClick.new).getOneClickTransaction.initInscription(username, email, urlReturn)
  end
  def TbkOneClick_finish(token)
    require_relative '../certificates/certoneclick'
    return getWebPay(CertOneClick.new).getOneClickTransaction.finishInscription(token)
  end
  def TbkOneClick_pay(buyOrder, tbkUser, username, amount)
    require_relative '../certificates/certoneclick'
    return getWebPay(CertOneClick.new).getOneClickTransaction.authorize(buyOrder, tbkUser, username, amount)
  end
  def TbkOneClick_reverse(buyOrder)
    require_relative '../certificates/certoneclick'
    return getWebPay(CertOneClick.new).getOneClickTransaction.reverse(buyOrder)
  end
  def TbkOneClick_remove(tbkUser, username)
    require_relative '../certificates/certoneclick'
    return getWebPay(CertOneClick.new).getOneClickTransaction.removeUser(tbkUser, username)
  end

end
