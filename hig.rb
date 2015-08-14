require 'formula'

class Hig < Formula
  homepage 'https://github.com/josephholsten/hig'
  head 'https://github.com/josephholsten/hig.git'
  version '0.1.9'
  url "https://github.com/josephholsten/hig/archive/#{version}.tar.gz"
  sha256 '7213af95cbe5a84cdd879cbf46b931396297353f1b27ae283f6effbcd72e0892'

  def install
    prefix.install Dir['*']
  end
end
