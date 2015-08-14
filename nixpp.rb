require 'formula'

class Nixpp < Formula
  homepage 'https://github.com/josephholsten/nixpp'
  head 'https://github.com/josephholsten/nixpp.git'
  version '0.1.2'
  url "https://github.com/josephholsten/nixpp/archive/#{version}.tar.gz"
  sha256 '00d8bf17425699b2003980ad6f5159e5484873591e2113e96bc970d722b6d0aa'

  def install
    prefix.install Dir['*']
  end
end
