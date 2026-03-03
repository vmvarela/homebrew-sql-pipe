class SqlPipe < Formula
  desc "Read CSV from stdin, query with SQL, write CSV to stdout"
  homepage "https://github.com/vmvarela/sql-pipe"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.2.0/sql-pipe-aarch64-macos"
      sha256 "f5f8c6357c74e67b3ef73d09fbd33cf30a0e6e12ef2d66e8abeaa89afb1a0ab8"
    end
    on_intel do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.2.0/sql-pipe-x86_64-macos"
      sha256 "09d407faa63ff291c1e72e64f379ffcd1fa684f366a94dc513001a35dfe5449c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.2.0/sql-pipe-aarch64-linux"
      sha256 "f4acf74d56cf7f882c6eca1507ad2d30ff07ee81715b6d33f1c43ba074c42a96"
    end
    on_intel do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.2.0/sql-pipe-x86_64-linux"
      sha256 "f3a3235e33aba0aa0c42741c0aa207738405a40ee88a52985d4280059c4989ff"
    end
  end

  def install
    bin.install Dir["sql-pipe*"].first => "sql-pipe"
  end

  test do
    assert_match "sql-pipe", shell_output("#{bin}/sql-pipe --version 2>&1")
  end
end
