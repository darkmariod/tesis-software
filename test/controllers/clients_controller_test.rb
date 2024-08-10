require "test_helper"

class ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get clients_url
    assert_response :success
  end

  test "should get new" do
    get new_client_url
    assert_response :success
  end

  test "should create client" do
    assert_difference("Client.count") do
      post clients_url, params: { client: { codigo_cliente: @client.codigo_cliente, direccion: @client.direccion, email: @client.email, fecha_falla_del_equipo: @client.fecha_falla_del_equipo, firma_del_cliente: @client.firma_del_cliente, hora_de_inicio: @client.hora_de_inicio, hora_final: @client.hora_final, nombre_cliente: @client.nombre_cliente, observaciones_del_tecnico: @client.observaciones_del_tecnico, ruc: @client.ruc, tecnico_a_cargo: @client.tecnico_a_cargo, telefono: @client.telefono, trabajo_realizado: @client.trabajo_realizado } }
    end

    assert_redirected_to client_url(Client.last)
  end

  test "should show client" do
    get client_url(@client)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_url(@client)
    assert_response :success
  end

  test "should update client" do
    patch client_url(@client), params: { client: { codigo_cliente: @client.codigo_cliente, direccion: @client.direccion, email: @client.email, fecha_falla_del_equipo: @client.fecha_falla_del_equipo, firma_del_cliente: @client.firma_del_cliente, hora_de_inicio: @client.hora_de_inicio, hora_final: @client.hora_final, nombre_cliente: @client.nombre_cliente, observaciones_del_tecnico: @client.observaciones_del_tecnico, ruc: @client.ruc, tecnico_a_cargo: @client.tecnico_a_cargo, telefono: @client.telefono, trabajo_realizado: @client.trabajo_realizado } }
    assert_redirected_to client_url(@client)
  end

  test "should destroy client" do
    assert_difference("Client.count", -1) do
      delete client_url(@client)
    end

    assert_redirected_to clients_url
  end
end
