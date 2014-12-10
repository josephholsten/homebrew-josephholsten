require 'formula'

class Hig < Formula
  homepage 'https://github.com/josephholsten/hig'
  head 'https://github.com/josephholsten/hig.git'
  version '0.1.4'
  url "https://github.com/josephholsten/hig/archive/#{version}.tar.gz"
  sha1 'df5a0e0d3d329a8dfecab85edec77bd39e0d9238'

  def install
    prefix.install Dir['*']
  end
end
