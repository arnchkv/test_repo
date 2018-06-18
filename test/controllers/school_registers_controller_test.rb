require 'test_helper'

class SchoolRegistersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @school_register = school_registers(:one)
  end

  test "should get index" do
    get school_registers_url
    assert_response :success
  end

  test "should get new" do
    get new_school_register_url
    assert_response :success
  end

  test "should create school_register" do
    assert_difference('SchoolRegister.count') do
      post school_registers_url, params: { school_register: { age: @school_register.age, name: @school_register.name, roll: @school_register.roll } }
    end

    assert_redirected_to school_register_url(SchoolRegister.last)
  end

  test "should show school_register" do
    get school_register_url(@school_register)
    assert_response :success
  end

  test "should get edit" do
    get edit_school_register_url(@school_register)
    assert_response :success
  end

  test "should update school_register" do
    patch school_register_url(@school_register), params: { school_register: { age: @school_register.age, name: @school_register.name, roll: @school_register.roll } }
    assert_redirected_to school_register_url(@school_register)
  end

  test "should destroy school_register" do
    assert_difference('SchoolRegister.count', -1) do
      delete school_register_url(@school_register)
    end

    assert_redirected_to school_registers_url
  end
end
