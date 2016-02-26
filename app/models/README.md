Add your ActiveRecord models here.

You can create them by being in the application root directory and running:

`rake generate:model NAME=User`



Encryption Enabled User Model...

include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end