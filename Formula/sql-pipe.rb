class SqlPipe < Formula
  desc "Read CSV from stdin, query with SQL, write CSV to stdout"
  homepage "https://github.com/vmvarela/sql-pipe"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.3.0/sql-pipe-aarch64-macos"
      sha256 "24f0f09aa20430c3fc5d5e0b2d6da15c098df5e70577f68bc62052c7dc56f660"
    end
    on_intel do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.3.0/sql-pipe-x86_64-macos"
      sha256 "9b95accb1256ce3e2d2da836a425ff57d6aae967e16488d152c089ae86c2883d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.3.0/sql-pipe-aarch64-linux"
      sha256 "c66c8743b00799d03eac462cb0c5d51c16e6c330bd8a3c8ebd20828a563ac541"
    end
    on_intel do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.3.0/sql-pipe-x86_64-linux"
      sha256 "f2d8619561f0b0f946f1ef51d899eebf239548d5a2d88b70fffbd13d437175db"
    end
  end

  def install
    bin.install Dir["sql-pipe*"].first => "sql-pipe"
  end

  test do
    assert_match "sql-pipe", shell_output("#{bin}/sql-pipe --version 2>&1")
  end
end
