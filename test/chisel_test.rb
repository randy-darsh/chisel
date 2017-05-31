require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel'

class ChiselTest < Minitest::Test

  def test_it_exists
    chisel = Chisel.new(markdown_file, my_output)

    assert_instance_of Chisel, chisel
  end
end
