class GitMobRs < Formula
  desc "CLI tool for including co-authors in commits"
  homepage "https://github.com/jplsek/git-mob-rs"
  url "https://github.com/jplsek/git-mob-rs/releases/download/v0.2.0/git-mob-rs-macos-intel-0.2.0.zip"
  sha256 "d26874a4e257cbcdc622c1eb32a36964d9c381dbb74959b3da50d1b771c0abd0"
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
  end

  test do
    raise "Test not implemented."
  end
end
