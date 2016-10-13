require 'formula'

class Nixpp < Formula
  homepage 'https://github.com/josephholsten/nixpp'
  head 'https://github.com/josephholsten/nixpp.git'
  version '0.2.0'
  url "https://github.com/josephholsten/nixpp/archive/v#{version}.tar.gz"
  sha256 '2b5573bba2ca4804fb8ba2ebdb58cee29371acf830ffff41e3df63cdf7023629'

  def install
    prefix.install Dir['*']
  end
end
