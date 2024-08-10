require "application_system_test_case"

class ClientsTest < ApplicationSystemTestCase
  setup do
    @client = clients(:one)
  end

  test "visiting the index" do
    visit clients_url
    assert_selector "h1", text: "Clients"
  end

  test "should create client" do
    visit clients_url
    click_on "New client"

    fill_in "Codigo cliente", with: @client.codigo_cliente
    fill_in "Direccion", with: @client.direccion
    fill_in "Email", with: @client.email
    fill_in "Fecha falla del equipo", with: @client.fecha_falla_del_equipo
    fill_in "Firma del cliente", with: @client.firma_del_cliente
    fill_in "Hora de inicio", with: @client.hora_de_inicio
    fill_in "Hora final", with: @client.hora_final
    fill_in "Nombre cliente", with: @client.nombre_cliente
    fill_in "Observaciones del tecnico", with: @client.observaciones_del_tecnico
    fill_in "Ruc", with: @client.ruc
    fill_in "Tecnico a cargo", with: @client.tecnico_a_cargo
    fill_in "Telefono", with: @client.telefono
    fill_in "Trabajo realizado", with: @client.trabajo_realizado
    click_on "Create Client"

    assert_text "Client was successfully created"
    click_on "Back"
  end

  test "should update Client" do
    visit client_url(@client)
    click_on "Edit this client", match: :first

    fill_in "Codigo cliente", with: @client.codigo_cliente
    fill_in "Direccion", with: @client.direccion
    fill_in "Email", with: @client.email
    fill_in "Fecha falla del equipo", with: @client.fecha_falla_del_equipo
    fill_in "Firma del cliente", with: @client.firma_del_cliente
    fill_in "Hora de inicio", with: @client.hora_de_inicio
    fill_in "Hora final", with: @client.hora_final
    fill_in "Nombre cliente", with: @client.nombre_cliente
    fill_in "Observaciones del tecnico", with: @client.observaciones_del_tecnico
    fill_in "Ruc", with: @client.ruc
    fill_in "Tecnico a cargo", with: @client.tecnico_a_cargo
    fill_in "Telefono", with: @client.telefono
    fill_in "Trabajo realizado", with: @client.trabajo_realizado
    click_on "Update Client"

    assert_text "Client was successfully updated"
    click_on "Back"
  end

  test "should destroy Client" do
    visit client_url(@client)
    click_on "Destroy this client", match: :first

    assert_text "Client was successfully destroyed"
  end
end
