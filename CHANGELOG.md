# 0.1.1
* Added the following to `novacbn/luvit-extras/process`
    * `::exepath() -> string`
    * `::homedir() -> string`
    * `::tmpdir() -> string`
* Added the following to `novacbn/luvit-extras/vfs`
    * `VirtualFileSystem::mkdir(string uri, function callback) -> void`
    * `VirtualFileSystem::mkdirSync(string uri) -> boolean`
* Fixed the following for `novacbn/luvit-extras/vfs`
    * Not accepting `_` characters in URI paths