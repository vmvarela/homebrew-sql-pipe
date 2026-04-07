class SqlPipe < Formula
  desc "Read CSV from stdin, query with SQL, write CSV to stdout"
  homepage "https://github.com/vmvarela/sql-pipe"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.4.1/sql-pipe-aarch64-macos"
      sha256 "2aaf218f51f88a6bdcd70f734225a2c76473307f01a3015ad24f1ddbdf142260"
    end
    on_intel do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.4.1/sql-pipe-x86_64-macos"
      sha256 "508a3a7988bc8c81b6f03b58c44af61e9775c3b9ad10da09f6166808157bf07b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.4.1/sql-pipe-aarch64-linux"
      sha256 "d22d2a9588ec48679b487faa5513c8a959b0fe4dcdf6e11445a9c1143559e17c"
    end
    on_intel do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.4.1/sql-pipe-x86_64-linux"
      sha256 "ac3c11f8888c43d602dcd1e0bfe2411eb49f10d2233b6558fe06e42c6d0200b6"
    end
  end

  resource "man" do
    url "https://github.com/vmvarela/sql-pipe/releases/download/v0.4.1/sql-pipe.1.gz"
    sha256 "bd4191a136361ef6522148ba1d092638170a3794c12289bab8469c1848b56cd1"
  end

  def install
    bin.install Dir["sql-pipe*"].first => "sql-pipe"
    resource("man").stage { man1.install Dir["*"].first => "sql-pipe.1.gz" }
  end

  test do
    assert_match "sql-pipe", shell_output("#{bin}/sql-pipe --version 2>&1")
  end
end
