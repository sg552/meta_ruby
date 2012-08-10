class Apple ; end
require 'test/unit'
class ClassTest < Test::Unit::TestCase
    def test_to_show_structures
        apple = Apple.new
        assert_equal Class, Apple.class
        assert_equal Apple, apple.class
        assert_equal [Apple, Object, Kernel], Apple.ancestors
        assert_equal Apple.superclass, Object
        assert_equal Apple.class, Class
        assert_equal Class.superclass, Module
        assert_equal Module.superclass, Object
        assert_equal Object.class, Class
    end
end
