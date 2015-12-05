require 'formula'

class Hig < Formula
  homepage 'https://github.com/josephholsten/hig'
  head 'https://github.com/josephholsten/hig.git'
  version '0.2.0'
  url "https://github.com/josephholsten/hig/archive/#{version}.tar.gz"
  sha256 '7c8cfd4547519ca62615cfbfa25a27e93992dc6debb5da91ffcbcb4c4181bce3'

  def install
    prefix.install Dir['*']
  end
end
