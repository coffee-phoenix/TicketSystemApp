require "application_system_test_case"

class MachinesTest < ApplicationSystemTestCase
  setup do
    @machine = machines(:one)
  end

  test "visiting the index" do
    visit machines_url
    assert_selector "h1", text: "Machines"
  end

  test "should create machine" do
    visit machines_url
    click_on "New machine"

    fill_in "Customer", with: @machine.customer_id
    fill_in "Description", with: @machine.description
    fill_in "Last service date", with: @machine.last_service_date
    fill_in "Make", with: @machine.make
    fill_in "Model", with: @machine.model
    fill_in "Serial number", with: @machine.serial_number
    click_on "Create Machine"

    assert_text "Machine was successfully created"
    click_on "Back"
  end

  test "should update Machine" do
    visit machine_url(@machine)
    click_on "Edit this machine", match: :first

    fill_in "Customer", with: @machine.customer_id
    fill_in "Description", with: @machine.description
    fill_in "Last service date", with: @machine.last_service_date.to_s
    fill_in "Make", with: @machine.make
    fill_in "Model", with: @machine.model
    fill_in "Serial number", with: @machine.serial_number
    click_on "Update Machine"

    assert_text "Machine was successfully updated"
    click_on "Back"
  end

  test "should destroy Machine" do
    visit machine_url(@machine)
    click_on "Destroy this machine", match: :first

    assert_text "Machine was successfully destroyed"
  end
end
