class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contato.subject
  #
  def contato(contato)

    @body = contato.body
    mail to: "carol_rib3iro@live.com", from: contato.email
  end
end
