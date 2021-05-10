class GitMobRs < Formula
  desc "CLI tool for including co-authors in commits"
  homepage "https://github.com/jplsek/git-mob-rs"
  url "https://github.com/jplsek/git-mob-rs/releases/download/v0.1.1/git-mob-rs-0.1.1-macos.zip"
  sha256 "a431bc2fb0651499ce0a784c90358124a077efc1cfadfabc1d8fd5729a31cec4"
  license "MIT"

  conflicts_with "git-duet/tap/git-duet", because: "git-duet also has a solo command"
  conflicts_with "jplsek/tap/git-mob", because: "git-mob also has a solo and mob command"

  def install
    bin.install "git-mob"
    bin.install "git-solo"
    bin.install "git-edit-coauthors"
  end

  test do
    raise "Test not implemented."
  end
end
