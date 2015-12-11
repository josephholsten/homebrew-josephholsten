require 'formula'

class Hig < Formula
  homepage 'https://github.com/josephholsten/hig'
  head 'https://github.com/josephholsten/hig.git'
  version '0.2.1'
  url "https://github.com/josephholsten/hig/archive/#{version}.tar.gz"
  sha256 '02caeca8bbb5ed5e42d09f0d87ee81babac5b05eb4d445c790704822206c5580'


  def install
    prefix.install Dir['*']
    bash_completion.install 'completion/hig'
  end
end
