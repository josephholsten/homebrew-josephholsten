require 'formula'

class Hig < Formula
  homepage 'https://github.com/josephholsten/hig'
  head 'https://github.com/josephholsten/hig.git'
  version '0.1.7'
  url "https://github.com/josephholsten/hig/archive/#{version}.tar.gz"
  sha256 '054bca929aab599386d3756ea8d2e5aecc3e14e74c8a6181c99a575d722a7242'

  def install
    prefix.install Dir['*']
  end
end
