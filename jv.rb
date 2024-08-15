class Jv < Formula
    desc "JV IP Tool"
    homepage "https://github.com/vndr/jv"
    url "https://github.com/vndr/jv/releases/download/v0.1.5/jv_Darwin_x86_64.tar.gz"
    sha256 "284d74c9f2b048e87082dcf6bfaa14b83dd98e7bbbcdbeeaba1d2baac431051c"
    version "0.1.4"
  
    def install
      bin.install "jv"
    end
  
    test do
      system "#{bin}/jv", "--version"
    end
  end
  

  class Jv < Formula
    desc "JV Tool"
    homepage "https://github.com/vndr/jv"
    
    if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/vndr/jv/releases/download/v0.1.5/jv_Darwin_x86_64.tar.gz"
        sha256 "284d74c9f2b048e87082dcf6bfaa14b83dd98e7bbbcdbeeaba1d2baac431051c"
      elsif Hardware::CPU.arm?
        url "https://github.com/vndr/jv/releases/download/v0.1.5/jv_Darwin_arm64.tar.gz"
        sha256 "5df6f81b65cf747c216c57a455c139b16e0e3a1af0fb3e16bc72a2355949a39e"
      end
    elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/vndr/jv/releases/download/v0.1.5/jv_Linux_x86_64.tar.gz"
        sha256 "1f3536a7ac2a8561c9fd910d812e8b71679ebfedefe9e4f719f14ed0a63bd2b6"
      elsif Hardware::CPU.arm?
        url "https://github.com/vndr/jv/releases/download/v0.1.5/jv_Linux_arm64.tar.gz"
        sha256 "6b4fa8c9a4671a4ae26a9706cac64f1b645e438ea956bc9f03d956df4c847b7c"
      end
    end
  
    def install
      bin.install "jv"
    end
  
    test do
      system "#{bin}/jv", "--version"
    end
  end
  
