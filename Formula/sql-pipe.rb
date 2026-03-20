class SqlPipe < Formula
  desc "Read CSV from stdin, query with SQL, write CSV to stdout"
  homepage "https://github.com/vmvarela/sql-pipe"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.4.0/sql-pipe-aarch64-macos"
      sha256 "2efe0b7d494d371672cfb86d37c28ad2c0eeb8f5d88092febae8ef7e2f510512"
    end
    on_intel do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.4.0/sql-pipe-x86_64-macos"
      sha256 "b758603b088e52c238f4aad594b96f29eea952dac01606e9405a405e45e339e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.4.0/sql-pipe-aarch64-linux"
      sha256 "0218c535c8306bd52c5c8af9319aabfcf2830728368857e548ec494d60623485"
    end
    on_intel do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.4.0/sql-pipe-x86_64-linux"
      sha256 "e81e5705abbb8a4eb068f9cfa98fe91198f9a395eeed9ef382415c2c757be951"
    end
  end

  resource "man" do
    url "https://github.com/vmvarela/sql-pipe/releases/download/v0.4.0/sql-pipe.1.gz"
    sha256 "24ce0d469eaa543d6c4289c236a3640845130924042bcbc2420c778ed4ef8a5d"
  end

  def install
    bin.install Dir["sql-pipe*"].first => "sql-pipe"
    resource("man").stage { man1.install "sql-pipe.1.gz" }
  end

  test do
    assert_match "sql-pipe", shell_output("#{bin}/sql-pipe --version 2>&1")
  end
end
