require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "should create product" do
    visit products_url
    click_on "New product"

    fill_in "Cantidad", with: @product.cantidad
    fill_in "Cantidad minima", with: @product.cantidad_minima
    fill_in "Category", with: @product.category_id
    fill_in "Codigo", with: @product.codigo
    fill_in "Color", with: @product.color
    fill_in "Descripcion", with: @product.descripcion
    fill_in "Imagen", with: @product.imagen
    fill_in "Nombre", with: @product.nombre
    fill_in "Precio", with: @product.precio
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "should update Product" do
    visit product_url(@product)
    click_on "Edit this product", match: :first

    fill_in "Cantidad", with: @product.cantidad
    fill_in "Cantidad minima", with: @product.cantidad_minima
    fill_in "Category", with: @product.category_id
    fill_in "Codigo", with: @product.codigo
    fill_in "Color", with: @product.color
    fill_in "Descripcion", with: @product.descripcion
    fill_in "Imagen", with: @product.imagen
    fill_in "Nombre", with: @product.nombre
    fill_in "Precio", with: @product.precio
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "should destroy Product" do
    visit product_url(@product)
    click_on "Destroy this product", match: :first

    assert_text "Product was successfully destroyed"
  end
end
