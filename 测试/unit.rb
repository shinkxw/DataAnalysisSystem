# encoding: GBK
require 'test/unit'
class Foo
   def foo
     "foo"
   end
   def bar
     "bar"
   end
end
class TC_Foo < Test::Unit::TestCase
  def setup
    @obj = Foo.new
  end
  # def teardown
  # end
  def test_foo
    assert_equal("foo", @obj.foo)
  end
  def test_bar
    assert_equal("bar", @obj.bar)
  end
end
