require 'test/unit'
require_relative 'app'

class TestMyFunction < Test::Unit::TestCase
  def test_gsub
    assert_equal("***@***.***", custom_gsub("aem@aol.com"))
  end
  def test_blue_question
    assert_equal([
      {"name" => "****", "age" => "**", "email" => "***@***.***", "id" => 22},
      {"name" => "***", "id" => 3, "email" => ["***@**.***", "***@***.***"]}
    ], 
    blue_question([
      {"name" => "Alej", "age" => 22, "email" => "aem@aol.com", "id" => 22}, 
      {"name" => "Mad", "id" => 3, "email" => ["mar@ut.edu", "hey@hey.com"]}
    ], ["email", "name", "age"]))
  end
end