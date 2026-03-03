class SqlPipe < Formula
  desc "Read CSV from stdin, run a SQL query, write results to stdout"
  homepage "https://github.com/vmvarela/sql-pipe"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v#{version}/sql-pipe-aarch64-macos"
      sha256 "bfbe588a5b1c9c8126439596ba0a162b6b6d522d7fcc96537f73fe59353e4d1f"
    end

    on_intel do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v#{version}/sql-pipe-x86_64-macos"
      sha256 "c2e4cdc7daf938387a3658d0cad183e382eaadad4ba297a71e1baa00cb379f5d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v#{version}/sql-pipe-x86_64-linux"
      sha256 "e57e0d72831e43fee6b5bcbbfe8e4c55ac247c10efe881d81e0c449156a84d92"
    end
  end

  def install
    bin.install Dir["sql-pipe-*"].first => "sql-pipe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sql-pipe --version")
  end
end
