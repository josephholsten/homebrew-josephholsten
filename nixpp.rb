require "formula"

class Nixpp < Formula
  desc "Shorthands to improved commands"
  homepage "https://github.com/josephholsten/nixpp"
  version '0.3.4'
  url "https://github.com/josephholsten/nixpp/archive/v#{version}.tar.gz"
  sha256 "306e1f6cc11871ee56ff2fbbc2bea9fab3716ba7bd5ea422854a7de51e9b405b"
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
