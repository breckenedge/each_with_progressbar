require 'ruby-progressbar'

module Enumerable
  def each_with_progressbar(options = {})
    progressbar = respond_to?(:length) ? ProgressBar.create(total: self.length) : ProgressBar.create()
    each do |blk|
      progressbar.increment
      yield blk
    end
  end

  alias :each_with_pb :each_with_progressbar
  alias :each_with_progress_bar :each_with_progressbar
end
