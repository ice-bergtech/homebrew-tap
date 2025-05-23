# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kr8 < Formula
  desc "An opinionated configuration management tool for Kubernetes Clusters"
  homepage "https://ice-bergtech.github.io/kr8"
  version "0.2.0"
  license "MIT"

  depends_on "helm"
  depends_on "jsonnet"

  on_macos do
    url "https://github.com/ice-bergtech/kr8/releases/download/v0.2.0/kr8_0.2.0_darwin_amd64.tar.gz", using: CurlDownloadStrategy,
      headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_TAP_GITHUB_TOKEN"]}"
      ]
    sha256 "c95a06f1d5f1b9cbd8da5625a26f624837e9b9535a712222551ff642a1e19dcb"

    def install
      bin.install "kr8"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Kr8
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/ice-bergtech/kr8/releases/download/v0.2.0/kr8_0.2.0_linux_amd64.tar.gz", using: CurlDownloadStrategy,
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_TAP_GITHUB_TOKEN"]}"
        ]
      sha256 "3eca0e25bf51dc3a404b647ab66f133604f7ec60d32b130953fcde9f79c8e6e3"
      def install
        bin.install "kr8"
      end
    end
  end
end
