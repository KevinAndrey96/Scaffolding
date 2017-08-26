require 'test_helper'

class ProyectoPatrocinadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proyecto_patrocinador = proyecto_patrocinadors(:one)
  end

  test "should get index" do
    get proyecto_patrocinadors_url
    assert_response :success
  end

  test "should get new" do
    get new_proyecto_patrocinador_url
    assert_response :success
  end

  test "should create proyecto_patrocinador" do
    assert_difference('ProyectoPatrocinador.count') do
      post proyecto_patrocinadors_url, params: { proyecto_patrocinador: { patrocinador_id: @proyecto_patrocinador.patrocinador_id, proyecto_id: @proyecto_patrocinador.proyecto_id } }
    end

    assert_redirected_to proyecto_patrocinador_url(ProyectoPatrocinador.last)
  end

  test "should show proyecto_patrocinador" do
    get proyecto_patrocinador_url(@proyecto_patrocinador)
    assert_response :success
  end

  test "should get edit" do
    get edit_proyecto_patrocinador_url(@proyecto_patrocinador)
    assert_response :success
  end

  test "should update proyecto_patrocinador" do
    patch proyecto_patrocinador_url(@proyecto_patrocinador), params: { proyecto_patrocinador: { patrocinador_id: @proyecto_patrocinador.patrocinador_id, proyecto_id: @proyecto_patrocinador.proyecto_id } }
    assert_redirected_to proyecto_patrocinador_url(@proyecto_patrocinador)
  end

  test "should destroy proyecto_patrocinador" do
    assert_difference('ProyectoPatrocinador.count', -1) do
      delete proyecto_patrocinador_url(@proyecto_patrocinador)
    end

    assert_redirected_to proyecto_patrocinadors_url
  end
end
