# homebrew-sql-pipe

Homebrew tap for [sql-pipe](https://github.com/vmvarela/sql-pipe) — read CSV from stdin, run a SQL query, write results to stdout.

## Installation

```sh
brew tap vmvarela/sql-pipe
brew install sql-pipe
```

## Usage

```sh
$ curl -s https://example.com/data.csv | sql-pipe 'SELECT region, SUM(revenue) FROM t GROUP BY region ORDER BY 2 DESC'
```

See the [sql-pipe README](https://github.com/vmvarela/sql-pipe#readme) for full documentation.

## Supported Platforms

| Platform | Architecture |
|---|---|
| macOS | Apple Silicon (aarch64) |
| macOS | Intel (x86_64) |
| Linux | x86_64 |

## Updating the Formula

When a new release is published, update `Formula/sql-pipe.rb` with the new `version` and SHA256 checksums from the release's `sha256sums.txt`.
