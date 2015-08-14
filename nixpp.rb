require 'formula'

class Nixpp < Formula
  homepage 'https://github.com/josephholsten/nixpp'
  head 'https://github.com/josephholsten/nixpp.git'
  version '0.1.3'
  url "https://github.com/josephholsten/nixpp/archive/#{version}.tar.gz"
  sha256 'e952608282c9cfd1e56196cb34c3a31ca1b5e748f45b5a35b577d92e30b41366'

  def install
    prefix.install Dir['*']
  end
end
