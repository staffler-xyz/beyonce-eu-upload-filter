require 'test_helper'

class ApplicationControllerTest < ActionDispatch::IntegrationTest
  Dir.glob("#{Rails.root}/test/fixtures/files/valid/*.*") do |file|
    test "#{file}" do
      post("/", params: { image: Rack::Test::UploadedFile.new(File.open(file)) })
      assert_response(:success)
    end
  end

  Dir.glob("#{Rails.root}/test/fixtures/files/invalid/*.*") do |file|
    test "#{file}" do
      post("/", params: { image: Rack::Test::UploadedFile.new(File.open(file)) })
      assert_response(:forbidden)
    end
  end
end