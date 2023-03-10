require "formula"

class Nixpp < Formula
  desc "Shorthands to improved commands"
  homepage "https://github.com/josephholsten/nixpp"
  version '0.3.2'
  url "https://github.com/josephholsten/nixpp/archive/v#{version}tar.gz"
  sha256 "ac969d7729dc4b11712a6803b023148328fc1a1d7ad7a6f6d2fa60ff6234a114"
  head "https://github.com/josephholsten/nixpp.git"

  depends_on "pandoc" => :build

  depends_on "coreutils" # for realpath
  depends_on "less"
  depends_on "parallel"
  depends_on "terminal-notifier"

  def install
    system "make"
    prefix.install Dir["*"]
  end
end
