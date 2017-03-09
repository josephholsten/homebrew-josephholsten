require 'formula'
class Prince < Formula
  homepage 'http://www.princexml.com/'
  version '11.1'
  url "http://www.princexml.com/download/prince-#{version}-macosx.tar.gz"
  sha256 '5bd703ce9510b29985cfec52036528add2fba0f5c0e158ff2f523116e4231f75'
  def install
    system "echo #{prefix} | ./install.sh"
  end
end
