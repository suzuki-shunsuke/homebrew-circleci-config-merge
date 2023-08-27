# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CircleciConfigMerge < Formula
  desc "Generate .circleci/config.yml by merging multiple files"
  homepage "https://github.com/suzuki-shunsuke/circleci-config-merge"
  version "1.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/circleci-config-merge/releases/download/v1.1.5/circleci-config-merge_1.1.5_darwin_amd64.tar.gz"
      sha256 "5af507f0ee67a63cca64a93c9a67601b8b1937aba1718b6ce3e9b58fae2ae9c4"

      def install
        bin.install "circleci-config-merge"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/suzuki-shunsuke/circleci-config-merge/releases/download/v1.1.5/circleci-config-merge_1.1.5_darwin_arm64.tar.gz"
      sha256 "35e638714e17c84b2b63931027516afdd3944c1acec61a7bfd9c0f41f6510419"

      def install
        bin.install "circleci-config-merge"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/circleci-config-merge/releases/download/v1.1.5/circleci-config-merge_1.1.5_linux_amd64.tar.gz"
      sha256 "54166ad4b919e8af07c8a3a32f0b77736dd620cc5b86225f072441e8b3adf2e9"

      def install
        bin.install "circleci-config-merge"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/suzuki-shunsuke/circleci-config-merge/releases/download/v1.1.5/circleci-config-merge_1.1.5_linux_arm64.tar.gz"
      sha256 "0bb8848ed4e3efacba1bda8dd44c8b656498591e5fc94417425dcb2a59ef58ac"

      def install
        bin.install "circleci-config-merge"
      end
    end
  end

  test do
    system "#{bin}/circleci-config-merge --version"
  end
end
