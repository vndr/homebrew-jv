class Jv < Formula
    desc "JV IP Tool"
    homepage "https://github.com/vndr/jv"
    url "https://github.com/vndr/jv/releases/download/v0.1.13/jv_Darwin_x86_64.tar.gz"
    sha256 "e42a45c0d5ea9de110d4d254e90f31a62abb05e7b60d0db65769c6d5aa0b4d5b"
    version "v0.1.13"
  
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
        url "https://github.com/vndr/jv/releases/download/v0.1.9/jv_Darwin_x86_64.tar.gz"
        sha256 "d64dfcc517ad5c1464928975271e7af8440badf7f946f132f4ad2a07c1ae799d"
      elsif Hardware::CPU.arm?
        url "https://github.com/vndr/jv/releases/download/v0.1.13/jv_Darwin_arm64.tar.gz"
        sha256 "d64dfcc517ad5c1464928975271e7af8440badf7f946f132f4ad2a07c1ae799d"
      end
    elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/vndr/jv/releases/download/v0.1.13/jv_Linux_x86_64.tar.gz"
        sha256 "d64dfcc517ad5c1464928975271e7af8440badf7f946f132f4ad2a07c1ae799d"
      elsif Hardware::CPU.arm?
        url "https://github.com/vndr/jv/releases/download/v0.1.13/jv_Linux_arm64.tar.gz"
        sha256 "d64dfcc517ad5c1464928975271e7af8440badf7f946f132f4ad2a07c1ae799d"
      end
    end
  
    def install
      bin.install "jv"
    end
  
    test do
      system "#{bin}/jv", "--version"
    end
  end
  
