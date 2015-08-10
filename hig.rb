require 'formula'

class Hig < Formula
  homepage 'https://github.com/josephholsten/hig'
  head 'https://github.com/josephholsten/hig.git'
  version '0.1.6'
  url "https://github.com/josephholsten/hig/archive/#{version}.tar.gz"
  sha256 'eeafa5571e26ab90663f67c2480469c72931e4e20c1cbb7fef20607e6e6c93f4'

  def install
    prefix.install Dir['*']
  end
end
