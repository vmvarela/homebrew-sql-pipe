class SqlPipe < Formula
  desc "Read CSV from stdin, query with SQL, write CSV to stdout"
  homepage "https://github.com/vmvarela/sql-pipe"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.3.1/sql-pipe-aarch64-macos"
      sha256 "5633f49f6cf7598d7a1a4ae691af0c5daca670ad6ced3aedb7820ff0d5352654"
    end
    on_intel do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.3.1/sql-pipe-x86_64-macos"
      sha256 "250652cf6881e4e0c1d8d5921b32ec1a99d2257e2566ca280eae377c607e6e55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.3.1/sql-pipe-aarch64-linux"
      sha256 "fb851e787ab928247ada3e37ec641a09656de266d60c4a75f9a235a7ecd9a399"
    end
    on_intel do
      url "https://github.com/vmvarela/sql-pipe/releases/download/v0.3.1/sql-pipe-x86_64-linux"
      sha256 "2f152e77d32ea0ba9dee0288e20afff5a1d8d145a025a8a09def35f4685a6c2e"
    end
  end

  def install
    bin.install Dir["sql-pipe*"].first => "sql-pipe"
  end

  test do
    assert_match "sql-pipe", shell_output("#{bin}/sql-pipe --version 2>&1")
  end
end
