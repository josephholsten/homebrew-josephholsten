require 'formula'

class Hig < Formula
  homepage 'https://github.com/josephholsten/hig'
  head 'https://github.com/josephholsten/hig.git'
  version '0.1.4'
  url "https://github.com/josephholsten/hig/archive/#{version}.tar.gz"
  sha1 '4116471f350c8cac9e57edb86fa6c85b8c6e5fe6'

  def install
    prefix.install Dir['*']
  end
end
