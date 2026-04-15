class SqlPipe < Formula
  desc "Read CSV from stdin, query with SQL, write CSV to stdout"
  homepage "https://github.com/vmvarela/sql-pipe"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.5.0/sql-pipe-aarch64-macos"
      sha256 "773277e58d588a8af417e252164b753ad8b01124ea38021029d9dd48bcddf950"
    end
    on_intel do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.5.0/sql-pipe-x86_64-macos"
      sha256 "802017083e45164b280f0a5881a29ac8588a680dd9b478fc09d549c17c8973be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.5.0/sql-pipe-aarch64-linux"
      sha256 "07c5d34dca818d594ffc2cfa6e281814dd9b7976be8a07378ab068e24b36f449"
    end
    on_intel do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.5.0/sql-pipe-x86_64-linux"
      sha256 "ac6c91a3b8369d3aa87c8235a60cac03fcd4b8e15485b85ff116af35d6391b8b"
    end
  end

  resource "man" do
    url "https://github.com/vmvarela/sql-pipe/releases/download/v0.5.0/sql-pipe.1.gz"
    sha256 "bfda344e967d5c7ccecf8819f73042075dc38474321a841a591ec303efc49253"
  end

  def install
    bin.install Dir["sql-pipe*"].first => "sql-pipe"
    resource("man").stage { man1.install Dir["*"].first => "sql-pipe.1.gz" }
  end

  test do
    assert_match "sql-pipe", shell_output("#{bin}/sql-pipe --version 2>&1")
  end
end
