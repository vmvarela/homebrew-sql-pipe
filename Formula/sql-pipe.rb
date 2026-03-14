class SqlPipe < Formula
  desc "Read CSV from stdin, query with SQL, write CSV to stdout"
  homepage "https://github.com/vmvarela/sql-pipe"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.3.0/sql-pipe-aarch64-macos"
      sha256 "91179de56e473b0f4e63b28e2356a6986bddfee4e93c1b0aafb5ed3900c1d4ab"
    end
    on_intel do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.3.0/sql-pipe-x86_64-macos"
      sha256 "8c97b14ef2290bb4457aaa9946e83a0327ef8c22fe6e64f450644e4668f2f96a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.3.0/sql-pipe-aarch64-linux"
      sha256 "e63191623988aa785b722ef6c7cf8b5478f8ea1b108d86708dd7e3982eef59a9"
    end
    on_intel do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.3.0/sql-pipe-x86_64-linux"
      sha256 "5314bab6014f010e92d63ccc01959eb5936a1829dea47e7d2701099943e20dfb"
    end
  end

  def install
    bin.install Dir["sql-pipe*"].first => "sql-pipe"
  end

  test do
    assert_match "sql-pipe", shell_output("#{bin}/sql-pipe --version 2>&1")
  end
end
