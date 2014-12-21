class AuthenticationMailer < ActionMailer::Base
  default from: "system@xxxxxxx.xxxxxxx"

  def complete_registration(user)
    @user = user
    mail(to: user.email, subject: 'ユーザー登録が完了しました。')
  end
end
