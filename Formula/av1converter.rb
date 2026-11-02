class Av1converter < Formula
  desc "Batch-convert video files to AV1 using FFmpeg"
  homepage "https://github.com/framicheli/av1converter"
  version "3.1.1"
  license "MIT"

  depends_on "ffmpeg"

  on_macos do
    on_arm do
      url "https://github.com/framicheli/av1converter/releases/download/v3.1.1/av1converter-aarch64-apple-darwin.tar.gz"
      sha256 "6eaa338ac00f78f25d765573ad4d2f4ed63ef54172e8727f8e6a95d97adaed96"
    end

    on_intel do
      url "https://github.com/framicheli/av1converter/releases/download/v3.1.1/av1converter-x86_64-apple-darwin.tar.gz"
      sha256 "9712565bcfb849b90da5eb5d1c221222c829fa23a637545e1acb7d8569b9fcdf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/framicheli/av1converter/releases/download/v3.1.1/av1converter-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1f688ce105043041077c2e6e7d2866ab555a54fb2a3b6b41d3400fccb5877d47"
    end
  end

  def install
    bin.install Dir["av1converter-*"].first => "av1converter"
  end

  test do
    assert_match "av1converter #{version}", shell_output("#{bin}/av1converter --version")
  end
end
