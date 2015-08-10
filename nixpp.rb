require 'formula'

class Nixpp < Formula
  homepage 'https://github.com/josephholsten/nixpp'
  head 'https://github.com/josephholsten/nixpp.git'
  version '0.1.1'
  url "https://github.com/josephholsten/nixpp/archive/#{version}.tar.gz"
  sha256 '621bc8f8b29563680df5a73d858c1e53f5ee0856c7e56c6ef72e5e19518f1cca'

  def install
    prefix.install Dir['*']
  end
end
