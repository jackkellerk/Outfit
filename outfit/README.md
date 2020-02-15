# General Information

- The starting point of the app is in the main.dart file.
- All classes are located in files in /lib/ directory.
- Dependencies do not specify Flutter SDK dependencies; they only specify custom created classes.

# Classes

## Block
- Purpose: Objects to hold clothing apparel and its corresponding information.
- Arguments: None
- Dependencies: None
- Location: block.dart
- Example: `new Block();` 
    - This instantiates a new Block.

## BlockRow
- Purpose: An object, a Flutter row and padding, to hold two Block objects. Used primarily for organization purposes.
- Arguments: None
- Dependencies: Block
- Location: blockRow.dart
- Example: `new BlockRow();`
    - This instanties a row of two Blocks next to each other.