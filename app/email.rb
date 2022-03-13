require "pony"
require 'io/console'
my_mail = "ale22iandro@gmail.com"
puts "Введите пароль от вашей почты"
password = STDIN.noecho(&:gets).chomp
puts "Кому отправить почту?"
send_to = STDIN.gets.chomp
puts "Что написать"
body = STDIN.gets.chomp
Pony.mail(
    {
        :subject => "Привет, это письмо отправлено програмой, созданной Алесем",
        :body => body,
        :to => send_to,
        :from => my_mail,
        :via => :smtp,
        :via_options => {
            :address => 'smtp.gmail.com',
            :port => '587',
            :enable_starttls_auto => true,
            :user_name => my_mail,
            :password => password,
            :authentication => :plain,
         }

    }
)
puts "Всё удалось"