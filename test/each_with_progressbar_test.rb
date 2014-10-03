require 'minitest/autorun'
require_relative '../lib/each_with_progressbar'

class EachWithProgressbarTest < MiniTest::Unit::TestCase
  def test_included_in_array
    assert [].respond_to?(:each_with_progressbar)
  end

  def test_doesnt_alter_result
    orig = [1, 2, 3]
    dest1 = []
    dest2 = []
    orig.each { |number| dest1 << number }
    orig.each_with_progressbar { |number| dest2 << number }
    assert_equal dest1, dest2
  end

  def test_goes_deep
    orig = [1, [2, 2], [3, 3, 3]]
    dest1 = []
    dest2 = []
    orig.each { |thing| dest1 << thing }
    orig.each_with_progressbar { |thing| dest2 << thing }
    assert_equal dest1, dest2
  end

  def test_hashes
    orig = {a: :b, c: :d}
    dest1 = []
    dest2 = []
    orig.each { |k, v| dest1 << [k, v] }
    orig.each_with_progressbar { |k, v| dest2 << [k, v] }
    assert_equal dest1, dest2
  end

  def test_long
    orig = []
    5000.times { |i| orig << i }
    orig.each_with_progressbar { |i| i }
  end

  def test_stderr
    orig = [1, 2, 3]
    orig.each_with_progressbar(STDERR) { |i| i }
  end
end
