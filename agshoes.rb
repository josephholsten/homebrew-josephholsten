require 'formula'

class Agshoes < Formula
  homepage 'https://github.com/josephholsten/agshoes'
  version '1.0.0'
  sha256 '30d777c8d38c55dff1e477f49195fff923524f4c55dfb83e0a2175a89f536fee'

  head "#{homepage}.git"
  url "#{homepage}/archive/v#{version}.tar.gz"

  def install
    prefix.install Dir['*']
  end
end

