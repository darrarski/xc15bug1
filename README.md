# Xcode 15 xcframework dependency bug

Building iOS app that depends on swift package with xcframework dependnecy fails when targeting iOS Device (not simulator).

**FB12339303**

### Setup:

- Swift package containing library with xcframework dependency added as a binary target.
- Xcode project with iOS app target that depends on the library.

### Steps to reproduce:

1. Open example workspace in Xcode.
2. Make sure code signing configuration is correct. Change development team and fix issues if needed.
3. Build example app target for iOS Device destination.

### Expected results, as on Xcode 14.3 (14E222b):

4. Build succeeds.

### Actual result on Xcode 15.0 Beta (15A5160n):

4. Build fails with the following error:

> Assertion failed: (rebasePtr->target == low56), function writeChainEntry, file ChainedFixups.cpp, line 1003.

### Notes:

- The issue does not occurs when building for iOS Simulator.
- Function mentioned in the error does not come from the xcframework dependency.

### Attachments:

- [Build log from Xcode 14.3 (14E222b)](Build%20log%20from%20Xcode%2014.3%20(14E222b).txt)
- [Build log from Xcode 15.0 Beta (15A5160n)](Build%20log%20from%20Xcode%2015.0%20Beta%20(15A5160n).txt)
