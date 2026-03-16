class FindGhApprovers < Formula
  desc "Analyze GitHub PR approval frequency and recency"
  homepage "https://github.com/the-corp-mark/homebrew-find-gh-approvers"

  # Points directly to the git repository
  url "https://github.com/the-corp-mark/homebrew-find-gh-approvers.git", branch: "main"
  version "1.0.0"

  depends_on "gh"
  depends_on "jq"

  def install
    bin.install "find-gh-approvers"
  end

  test do
    # Verify the binary is executable and accessible
    assert_match "20", shell_output("#{bin}/find-gh-approvers --help", 1)
  end
end
