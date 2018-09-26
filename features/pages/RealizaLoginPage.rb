class Login < SitePrism::Page
    set_url "https://demo.suiteondemand.com/index.php?action=Login&module=User"
    element :user, "input[id='user_name']"
    element :pass, "input[id='username_password']"
    element :botaoLogin, "input[id='bigbutton']"

    def realizaLogin(usuario, senha)
        user.set(usuario)
        pass.set(senha)
    end
end