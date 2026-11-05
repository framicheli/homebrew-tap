class Av1converter < Formula
  desc "Batch-convert video files to AV1 using FFmpeg"
  homepage "https://github.com/framicheli/av1converter"
  version "3.2.0"
  license "MIT"

  depends_on "ffmpeg"

  on_macos do
    on_arm do
      url "https://github.com/framicheli/av1converter/releases/download/v3.2.0/av1converter-aarch64-apple-darwin.tar.gz"
      sha256 "eabff10be3e8be42a2267adbe4910d69f30abec4ada152c5b0f48f1bd2d1a28c"
    end

    on_intel do
      url "https://github.com/framicheli/av1converter/releases/download/v3.2.0/av1converter-x86_64-apple-darwin.tar.gz"
      sha256 "773b5d96d4e41ebf061e640d7faf0e05544bb068001ca83a989207e3de785e54"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/framicheli/av1converter/releases/download/v3.2.0/av1converter-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4bcfe70933a1a9e3f9e8e36a2a491847c15a416e4ff78c413bcb627036740582"
    end
  end

  def install
    bin.install Dir["av1converter-*"].first => "av1converter"
  end

  test do
    assert_match "av1converter #{version}", shell_output("#{bin}/av1converter --version")
  end
end
