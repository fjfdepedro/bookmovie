require 'test_helper'

class LibrosControllerTest < ActionController::TestCase
  setup do
    @libro = libros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:libros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create libro" do
    assert_difference('Libro.count') do
      post :create, libro: { authors.author.key: @libro.authors.author.key, authors.type.key: @libro.authors.type.key, created.type: @libro.created.type, created.value: @libro.created.value, key: @libro.key, last_modified.type: @libro.last_modified.type, last_modified.value: @libro.last_modified.value, latest_revision: @libro.latest_revision, revision: @libro.revision, string: @libro.string, subjects: @libro.subjects, title: @libro.title, type.key: @libro.type.key }
    end

    assert_redirected_to libro_path(assigns(:libro))
  end

  test "should show libro" do
    get :show, id: @libro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @libro
    assert_response :success
  end

  test "should update libro" do
    patch :update, id: @libro, libro: { authors.author.key: @libro.authors.author.key, authors.type.key: @libro.authors.type.key, created.type: @libro.created.type, created.value: @libro.created.value, key: @libro.key, last_modified.type: @libro.last_modified.type, last_modified.value: @libro.last_modified.value, latest_revision: @libro.latest_revision, revision: @libro.revision, string: @libro.string, subjects: @libro.subjects, title: @libro.title, type.key: @libro.type.key }
    assert_redirected_to libro_path(assigns(:libro))
  end

  test "should destroy libro" do
    assert_difference('Libro.count', -1) do
      delete :destroy, id: @libro
    end

    assert_redirected_to libros_path
  end
end
