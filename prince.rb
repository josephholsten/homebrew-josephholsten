require 'formula'
class Prince < Formula
  homepage 'http://www.princexml.com/'
  version '9.0r5'
  url "http://www.princexml.com/download/prince-#{version}-macosx.tar.gz"
  sha256 '5aab38db48108f5246b2d477a86e533783cf00825c8db89e2dd02d96e2dd9e84'
  def install
    system "echo #{prefix} | ./install.sh"
  end
end
