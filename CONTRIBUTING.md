# Contributing

Controbutions are very much welcomed. In fact, this repository lives from creative proposals on how to make use of the ability to create custom collections.

## Tutorial

If you don't know how to create custom collections, but want to learn about it, I suggest [this tutorial](https://www.raywenderlich.com/139591/building-custom-collection-swift).

## Issues

There are two cases where you may want to open up an issue:
- To discuss a suggestion for a new collection.
- Report issues with / suggest improvements for existing collections.

## Pull Requests

When creating pull requests to fix / improve existing collections or to add new collections, it's always a good idea to first open up an issue that can then be referenced in the PR description. However, this isn't a fixed requirement.

## Guidelines

When adding a new collection, stick to the following structure:
- In the *Collections* folder, add a new folder named the same as your collection.
- In the newly created folder, add the collection source file and a doc file. Please use the [DocTemplate.md](https://github.com/fredpi/SwiftCollections/blob/stable/DocTemplate.md) file at the root of this repository as a template for any documentation file and keep its structure as far as possible.
- Add any helper types or extensions shared between multiple collections in the *Helpers* folder.

Please always respect these guidelines when editing / commiting anything:
- For **commit messages**, follow the syntax described [here](http://chris.beams.io/posts/git-commit/).
- For **new files or additions**, follow the file structure guide described [here](http://bestpractices.jamitlabs.com/t/file-structure-use-of-mark/84). Use extensions for protocol conformances.
- For **any code**, don't produce any SwiftLint warnings or errors.

Please use the following file header format for any new Swift files:

```swift
//
//  [File Title].swift
//  SwiftCollections
//
//  Created by [Your Name] on [Day (2 digits)].[Month (2 digits)].[Year (2 digits)].
//  Released as a part of SwiftCollections under the MIT license.
//
```
