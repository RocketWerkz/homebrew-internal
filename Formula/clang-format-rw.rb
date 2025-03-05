# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

class ClangFormatRw < Formula
  desc "Formatting tools for C, C++, Obj-C, Java, JavaScript, TypeScript"
  homepage "https://clang.llvm.org/docs/ClangFormat.html"
  url "https://github.com/RocketWerkz/homebrew-internal/releases/download/19.1.0/clang-format"
  sha256 "8d1194f19befc6295add10cb1a5a5ae9e63ded06424bda1536f6e10a670ec0d4"
  license "Apache-2.0"

  def install
    chmod "+x", "clang-format"

    # Install clang-format
    bin.install "clang-format"
  end

  test do
    system "#{bin}/clang-format --version"
  end
end