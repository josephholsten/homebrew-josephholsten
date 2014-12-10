require 'formula'

class Hig < Formula
  homepage 'https://github.com/josephholsten/hig'
  head 'https://github.com/josephholsten/hig.git'
  version '0.1.2'
  url "https://github.com/josephholsten/hig/archive/#{version}.tar.gz"
  sha1 '202d774b3ffed7a72aa98a1f04f7516bfffec0bc'

  def install
    prefix.install Dir['*']
  end
end
