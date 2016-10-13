require 'formula'

class Hig < Formula
  homepage 'https://github.com/josephholsten/hig'
  head 'https://github.com/josephholsten/hig.git'
  version '0.4.2'
  url "https://github.com/josephholsten/hig/archive/v#{version}.tar.gz"
  sha256 'dda7aceef074071137994ab9403e4f7522dfadab1569c7a16fec5233e19fa98e'

  depends_on 'pandoc' => :build

  def install
    system 'make man'
    bash_completion.install 'completion/hig'
    man1.install 'man/hig.1'
    prefix.install Dir['*']
  end
end
