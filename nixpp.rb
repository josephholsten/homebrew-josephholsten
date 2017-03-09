require 'formula'

class Nixpp < Formula
  homepage 'https://github.com/josephholsten/nixpp'
  head 'https://github.com/josephholsten/nixpp.git'
  version '0.2.2'
  url "https://github.com/josephholsten/nixpp/archive/v#{version}.tar.gz"
  sha256 'e22e4d44a18ea22ab05c1d4a1648fe3adacd27b09005fcc3b4cef408b2b5c0e7'

  depends_on 'coreutils' # for realpath
  depends_on 'less'
  depends_on 'parallel'
  depends_on 'terminal-notifier'

  def install
    prefix.install Dir['*']
  end
end
