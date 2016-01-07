require 'formula'

class Hig < Formula
  homepage 'https://github.com/josephholsten/hig'
  head 'https://github.com/josephholsten/hig.git'
  version '0.2.2'
  url "https://github.com/josephholsten/hig/archive/#{version}.tar.gz"
  sha256 '0ddd6de37357b11f6f13b3cab0e7893fb7d1a714ce2a61619fb186e28d062923'


  def install
    bash_completion.install 'completion/hig'
    prefix.install Dir['*']
  end
end
