require 'formula'

class HicEtNunc < Formula
  homepage 'https://github.com/telemachus/hic-et-nunc'
  head 'https://github.com/telemachus/hic-et-nunc.git'
  # version 'TODO'
  # url "https://github.com/josephholsten/hig/archive/v#{version}.tar.gz"
  # sha256 'TODO'

  def install
    system 'make'
    bin.install 'nunc'
    bin.install 'hic'
  end
end

