require 'formula'

class Hig < Formula
  homepage 'https://github.com/josephholsten/hig'
  head 'https://github.com/josephholsten/hig.git'
  version '0.1.5'
  url "https://github.com/josephholsten/hig/archive/#{version}.tar.gz"
  sha1 '70c8111ee1faad2d40e6ba41be5d488280e43864'

  def install
    prefix.install Dir['*']
  end
end
