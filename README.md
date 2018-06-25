# luvit-extras

> **gmodproj >= 0.4.0**

## Requirements

* [luvit](https://github.com/leafo/moonscript)

## Description

Extends the built-in APIs of Luvit with utility or missing features

## Documentation

Currently missing a more readable form of documentation, although everything under the `src` directory annotated.

For synchronous API calls, unlike Luvit, errors are dispatched instead of being returned as the second result, if any.

### crypto

Has bindings for some basic OpenSSL functionality

### fs

Extension of the `fs` internal module, providing some helper functions or missing features like `fs::watchPoll(string path, number tickRate?, function listener) -> DirectoryPoll or FilePoll`

### process

Extension of the `process` internal module, providing missing features like `process::chdir(string directory) -> void`

### vfs

New module providing a simplistic multi-layered virtual file system, supporting basic file system APIs.

```lua
vfs = VirtualFileSystem:new()
vfs:mount("test", myVirtualAdapter)

vfs:writeFileSync("test://myfile.txt", "test text") -- Write 'test text' to the file in the virtual adapter
print(vfs:readFileSync("test://myfile.txt"))        -- Should read and print 'test text'
```

### adapters

Adapter classes for configuring sources for the VirtualFileSystem class to use

#### FileSystemAdapter

Class for configuring a VirtualFileSystem to use an isolated directory on the local machine

```lua
vfs     = VirtualFileSystem:new()
adapter = FileSystemAdapter:new("/home/myname/resourcefiles")
vfs:mount("resources", adapter)

vfs:writeFileSync("resources://myfile.txt")
```

## Installation

If wanting to use without `gmodproj` on `luvit`, download the latest `luvit-extras.lua` build from [Releases](https://github.com/novacbn/luvit-extras/releases). And use it as you would any other library.

Alternatively, if using with `gmodproj`. Download the latest `.zip` or `.tar.gz` archive from the [Releases](https://github.com/novacbn/properties/releases). Extract the contents of `src` directory into your project's `packages` directory under a `novacbn/luvit-extras` directory.

## Building

```bash
# Clone the repository
git clone https://github.com/novacbn/luvit-extras

# Move into the project and make the build directory
cd luvit-extras
mkdir ./dist

# Building the project will produce `./dist/luvit-extras.lua`
gmodproj build # Or gmodproj build production
```