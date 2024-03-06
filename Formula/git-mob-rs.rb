class GitMobRs < Formula
  desc "CLI tool for including co-authors in commits"
  homepage "https://github.com/jplsek/git-mob-rs"
  url "https://github.com/jplsek/git-mob-rs/releases/download/v0.4.0/git-mob-rs-macos-intel-0.4.0.zip"
  sha256 "821e5f5b6aa0f63358d5cfd3c306723abd0296c31634e331f5bbe809d9beba88"
  license "MIT"

  conflicts_with "git-duet/tap/git-duet", because: "git-duet also has a solo command"
  conflicts_with "jplsek/tap/git-mob", because: "git-mob uses the same commands"

  def install
    bin.install "git-mob"
    bin.install "git-solo"
    bin.install "git-edit-coauthors"
    bin.install "git-add-coauthor"
    bin.install "git-edit-coauthor"
    bin.install "git-delete-coauthor"
    bin.install "git-mob-print"
  end

  test do
    raise "Test not implemented."
  end
end
