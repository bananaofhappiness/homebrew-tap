class Soundscope < Formula
  desc "TUI for real-time analysis of audio files, system audio, and microphone input"
  homepage "https://github.com/bananaofhappiness/soundscope"
  url "https://github.com/bananaofhappiness/soundscope/releases/download/v1.12.0/soundscope-macOS-arm64.tar.gz"
  sha256 "6a038d3f2e4be6a5110990d0e46cf0809ff3360dcd96bcfef581f490387b8d90"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/bananaofhappiness/soundscope/releases/download/v1.12.0/soundscope-macOS-x86_64.tar.gz"
      sha256 "419074b28f2add66c09f4873fde53a03137d92e05653f387647008649dad16cd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bananaofhappiness/soundscope/releases/download/v1.12.0/soundscope-Linux-gnu-x86_64.tar.gz"
      sha256 "20287b89e3a4ae560ce9a6295244c36283b7e9147c7f1227e4b30d5aaa7dfba2"
    end

    on_arm do
      url "https://github.com/bananaofhappiness/soundscope/releases/download/v1.12.0/soundscope-Linux-gnu-arm64.tar.gz"
      sha256 "a6d97a7169e42925120f80de0b9c97f1ce9831acfdf66961ceca74be97de06b2"
    end
  end

  def install
    bin.install "soundscope"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/soundscope --version")
  end
end
