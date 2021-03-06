# license-swap

Simple script to swap the license header of Java files.

This script is intended for my personal use. No assumption should be made that it will work for you as is, or at all.

[![forthebadge](http://forthebadge.com/images/badges/made-with-crayons.svg)](http://forthebadge.com)
[![forthebadge](http://forthebadge.com/images/badges/pretty-risque.svg)](http://forthebadge.com)

## Prerequisites

On OS X, you need **gsed**:

```
brew install gsed
```

If you are on GNU/Linux, replace all the `gsed` in **license_swap.sh** with just `sed`.

## Usage

1. Replace the content of **license_text.txt** with the new license header text.

2. Run `./license_swap.sh PATH_TO_JAVA_FILE`.

To swap the license header on a bunch of Java files, make a **license_text.txt** in the root directory with all the Java files and run:

```
find . -type f -name '*.java' -exec /PATH/TO/license_swap.sh {} \;
```
