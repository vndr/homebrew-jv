class Jv < Formula
    desc "JV IP Tool"
    homepage "https://github.com/vndr/jv"
    url "https://github.com/vndr/jv/releases/download/v0.1.3/jv_Darwin_x86_64.tar.gz"
    sha256 "3434aa1475e796e5010c8fefc2cab3a5cf8820fb48f257d269792764a968bc81"
  
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
        url "https://github.com/vndr/jv/releases/download/v0.1.3/jv_Darwin_x86_64.tar.gz"
        sha256 "3434aa1475e796e5010c8fefc2cab3a5cf8820fb48f257d269792764a968bc81"
      elsif Hardware::CPU.arm?
        url "https://github.com/vndr/jv/releases/download/v0.1.3/jv_Darwin_arm64.tar.gz"
        sha256 "4d7dfb65d38ecf527f30e8d8af7892cac449423fddc584b752659da4c330fe1d"
      end
    elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/vndr/jv/releases/download/v0.1.3/jv_Linux_x86_64.tar.gz"
        sha256 "604a6dbbbbb2a0f2b7024df942da9d6e8322d61a261b7253e874ac31fe0ca992"
      elsif Hardware::CPU.arm?
        url "https://github.com/vndr/jv/releases/download/v0.1.3/jv_Linux_arm64.tar.gz"
        sha256 "0cf8fe659d4cc057db4a364167a66dbd168dd0b9ba38f7eb32b4e8f9e0fe77ee"
      end
    end
  
    def install
      bin.install "jv"
    end
  
    test do
      system "#{bin}/jv", "--version"
    end
  end
  