require 'test_helper'

class BillSummariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bill_summary = bill_summaries(:one)
  end

  test "should get index" do
    get bill_summaries_url
    assert_response :success
  end

  test "should get new" do
    get new_bill_summary_url
    assert_response :success
  end

  test "should create bill_summary" do
    assert_difference('BillSummary.count') do
      post bill_summaries_url, params: { bill_summary: { Amount: @bill_summary.Amount, Description: @bill_summary.Description, PaymentDate: @bill_summary.PaymentDate, Title: @bill_summary.Title } }
    end

    assert_redirected_to bill_summary_url(BillSummary.last)
  end

  test "should show bill_summary" do
    get bill_summary_url(@bill_summary)
    assert_response :success
  end

  test "should get edit" do
    get edit_bill_summary_url(@bill_summary)
    assert_response :success
  end

  test "should update bill_summary" do
    patch bill_summary_url(@bill_summary), params: { bill_summary: { Amount: @bill_summary.Amount, Description: @bill_summary.Description, PaymentDate: @bill_summary.PaymentDate, Title: @bill_summary.Title } }
    assert_redirected_to bill_summary_url(@bill_summary)
  end

  test "should destroy bill_summary" do
    assert_difference('BillSummary.count', -1) do
      delete bill_summary_url(@bill_summary)
    end

    assert_redirected_to bill_summaries_url
  end
end
