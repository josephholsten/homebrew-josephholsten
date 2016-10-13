require 'formula'

class Nixpp < Formula
  homepage 'https://github.com/josephholsten/nixpp'
  head 'https://github.com/josephholsten/nixpp.git'
  version '0.2.1'
  url "https://github.com/josephholsten/nixpp/archive/v#{version}.tar.gz"
  sha256 '1d051d9eac4afe2b09377433c9fa7463a099f45142056b673f0ff50177e4bd86'

  def install
    prefix.install Dir['*']
  end
end
