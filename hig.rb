require 'formula'

class Hig < Formula
  homepage 'https://github.com/josephholsten/hig'
  head 'https://github.com/josephholsten/hig.git'
  version '0.1.10'
  url "https://github.com/josephholsten/hig/archive/#{version}.tar.gz"
  sha256 '2651e062bed4d3dc628aa2bf69493513cb90954f800ef8779220bd17786e603e'

  def install
    prefix.install Dir['*']
  end
end
