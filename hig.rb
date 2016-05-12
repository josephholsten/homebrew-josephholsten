require 'formula'

class Hig < Formula
  homepage 'https://github.com/josephholsten/hig'
  head 'https://github.com/josephholsten/hig.git'
  version '0.3.1'
  url "https://github.com/josephholsten/hig/archive/v#{version}.tar.gz"
  sha256 '11ac6318f22797945cec11b1c04d98d94d79557d17b962038c38f86a6b69205c'

  depends_on 'pandoc' => :build

  def install
    system 'make man'
    bash_completion.install 'completion/hig'
    man1.install 'man/hig.1'
    prefix.install Dir['*']
  end
end
