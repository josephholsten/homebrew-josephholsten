require 'formula'

class Hig < Formula
  homepage 'https://github.com/josephholsten/hig'
  head 'https://github.com/josephholsten/hig.git'
  version '0.4.1'
  url "https://github.com/josephholsten/hig/archive/v#{version}.tar.gz"
  # sha256 '

  depends_on 'pandoc' => :build

  def install
    system 'make man'
    bash_completion.install 'completion/hig'
    man1.install 'man/hig.1'
    prefix.install Dir['*']
  end
end
