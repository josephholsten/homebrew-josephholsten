require 'formula'

class Hig < Formula
  homepage 'https://github.com/josephholsten/hig'
  head 'https://github.com/josephholsten/hig.git'
  version '0.1.8'
  url "https://github.com/josephholsten/hig/archive/#{version}.tar.gz"
  sha256 '0ced55fc86c8e4a812f47b78ce83ede1fd10786f4a57d85bf8e088aea8c8a098'

  def install
    prefix.install Dir['*']
  end
end
