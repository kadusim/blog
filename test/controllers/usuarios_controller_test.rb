require 'test_helper'

class UsuariosControllerTest < ActionDispatch::IntegrationTest
    test "invalid signup information" do
    get signup_path
    assert_no_difference 'Usuario.count' do
      post usuarios_path, params: { usuario: { nome:  "",
                                               email: "user@invalid",
                                               password:              "foo",
                                               password_confirmation: "bar",
                                               tipo: "Administrador" } }
    end
    assert_template 'usuarios/new'
  end
end
