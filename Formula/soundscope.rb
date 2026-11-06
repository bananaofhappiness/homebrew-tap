class Soundscope < Formula
  desc "TUI for real-time analysis of audio files, system audio, and microphone input"
  homepage "https://github.com/bananaofhappiness/soundscope"
  url "https://github.com/bananaofhappiness/soundscope/releases/download/v1.10.1/soundscope-macOS-arm64.tar.gz"
  sha256 "9f490ad770d9d22e69e41fa9a6f3e08fc18cc07095c1a410458db3ebb1f7e7e8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/bananaofhappiness/soundscope/releases/download/v1.10.1/soundscope-macOS-x86_64.tar.gz"
      sha256 "772c58b2d5774546ecaaa49598fca94b25f1eeae1d1ab1ddc660b7450ac829b7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bananaofhappiness/soundscope/releases/download/v1.10.1/soundscope-Linux-gnu-x86_64.tar.gz"
      sha256 "7d82c860b65328e72ec1211ce0f4c625be6ea058b1658377be8acb9c09f65450"
    end

    on_arm do
      url "https://github.com/bananaofhappiness/soundscope/releases/download/v1.10.1/soundscope-Linux-gnu-arm64.tar.gz"
      sha256 "064229b0991feabc2153897ee5f071c0237649b31db15ff68aa72fc591964459"
    end
  end

  def install
    bin.install "soundscope"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/soundscope --version")
  end
end
