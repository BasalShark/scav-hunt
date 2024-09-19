require "test_helper"

class ChallengesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @challenge = challenges(:one)
  end

  test "should get index" do
    get challenges_url
    assert_response :success
  end

  test "should get new" do
    get new_challenge_url
    assert_response :success
  end

  test "should create challenge" do
    assert_difference("Challenge.count") do
      post challenges_url, params: { challenge: { number: 523892382, description: "Don't Stop Believin'", points: 300 } }
    end

    assert_redirected_to challenge_url(Challenge.last)
  end

  test "should show challenge" do
    get challenge_url(@challenge)
    assert_response :success
  end

  test "should get edit" do
    get edit_challenge_url(@challenge)
    assert_response :success
  end

  test "should update challenge" do
    patch challenge_url(@challenge), params: { challenge: { number: @challenge.number, description: @challenge.description, points: @challenge.points } }
    assert_redirected_to challenge_url(@challenge)
  end

  test "should destroy challenge" do
    challenge = FactoryBot.create(:challenge)
    assert_empty challenge.results

    assert_difference("Challenge.count", -1) do
      delete challenge_url(challenge)
    end

    assert_redirected_to challenges_url
  end

  test "should not destroy challenge if there is a result attached" do
    FactoryBot.create(:result, challenge: @challenge)
    assert @challenge.results.any?

    assert_no_difference("Challenge.count", -1) do
      delete challenge_url(@challenge)
    end

    assert_response 500
  end
end
