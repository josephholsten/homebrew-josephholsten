require 'formula'

class Nixpp < Formula
  homepage 'https://github.com/josephholsten/nixpp'
  head 'https://github.com/josephholsten/nixpp.git'
  version '0.1.0'
  url "https://github.com/josephholsten/nixpp/archive/#{version}.tar.gz"
  sha256 '489718ce9b2ed2c0ad910a4a57e6c74cdaf6851ca3f72d76d88f273918d210e8'

  def install
    prefix.install Dir['*']
  end
end
