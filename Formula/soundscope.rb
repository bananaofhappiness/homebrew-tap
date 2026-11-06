class Soundscope < Formula
  desc "TUI for real-time analysis of audio files, system audio, and microphone input"
  homepage "https://github.com/bananaofhappiness/soundscope"
  url "https://github.com/bananaofhappiness/soundscope/releases/download/v1.11.0/soundscope-macOS-arm64.tar.gz"
  sha256 "e68364818e419356b0695640abb068daabc36570f1638713151650a1d3f414f3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/bananaofhappiness/soundscope/releases/download/v1.11.0/soundscope-macOS-x86_64.tar.gz"
      sha256 "2a6b0fc90037ab954684f0a3bcdbdf6a769572b346c138c26ce0066186172742"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bananaofhappiness/soundscope/releases/download/v1.11.0/soundscope-Linux-gnu-x86_64.tar.gz"
      sha256 "ceffcaf600574df0603304f3b86c19eea5c22679c05c30ea6d5a396bb6f6ef82"
    end

    on_arm do
      url "https://github.com/bananaofhappiness/soundscope/releases/download/v1.11.0/soundscope-Linux-gnu-arm64.tar.gz"
      sha256 "5c03a5572b6983748ff8d4fca0dc988b62988c6d48e9e369d3f28bb4e11a54a7"
    end
  end

  def install
    bin.install "soundscope"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/soundscope --version")
  end
end
