# Move lib directory to /Flutter Subfolder

The goal is to move only the `lib/` directory from the repository root into the existing `Flutter/` subfolder.

## Proposed Changes

### Version Control / File System

#### [MODIFY] File Structure
- [DELETE] [Flutter/lib](file:///C:/Users/patel/OneDrive/Desktop/DU/Sem%205%20(Demo)/Code/Flutter/krish_flutter/Flutter/lib) (Outdated version)
- [MOVE] [lib/](file:///C:/Users/patel/OneDrive/Desktop/DU/Sem%205%20(Demo)/Code/Flutter/krish_flutter/lib) to [Flutter/lib](file:///C:/Users/patel/OneDrive/Desktop/DU/Sem%205%20(Demo)/Code/Flutter/krish_flutter/Flutter/lib)

I will use `git mv` to ensure Git tracks the move.

## Verification Plan

### Manual Verification
- Verify that `Flutter/lib` contains labs 2 through 15 and `main.dart`.
- Check `git status` to ensure the move is staged.
