My neovim configuration
To change the colorscheme, edit the plugins/colorscheme.lua file.

The following dependenies are required to access all features of the installed plugins.

### Dependencies

#### Nerd Font
Install one of the nerd font variations and change terminal font to it. Nerd Fonts are special fonts that include a wide range of icons and glyphs, which can enhance the visual appearance of your terminal and improve readability.
[nerdfonts.com](https://www.nerdfonts.com/)

#### fzf
[Github](https://github.com/junegunn/fzf?tab=readme-ov-file#installation)

`brew install fzf`

#### fd
[Github](https://github.com/sharkdp/fd?tab=readme-ov-file#installation)

`brew install fd`

#### lazygit
[Github](https://github.com/jesseduffield/lazygit?tab=readme-ov-file#homebrew)

`brew install lazygit`

#### ripgrep
[Github](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation)

`brew install ripgrep`
<hr />

## XCode features
ignore the following dependencies if you do not need swift development.

#### xcode-build-server
[Github](https://github.com/SolaWing/xcode-build-server)

`brew install xcode-build-server`

#### SwiftFormat
[Github](https://github.com/nicklockwood/SwiftFormat)

`brew install swiftformat`

#### xcbeautify
[Github](xcbeautify)

`brew install xcbeautify`

#### pymobiledevice3
[Github](https://github.com/doronz88/pymobiledevice3?tab=readme-ov-file#installation)

`python3 -m pip install -U pymobiledevice3`

#### xcodeproj
[Github](https://github.com/CocoaPods/Xcodeproj#installing-xcodeproj)

`[sudo] gem install xcodeproj`

#### lldb path
edit `lua/lazy-nvim/plugins/nvim-dap.lua` and replace codelldb file path with the path of file in your computer
for more information see [xcodebuild.nvim](https://github.com/wojciech-kulik/xcodebuild.nvim#-debugger-configuration)
<hr />

### Markdown dependencies
#### (Optional) deno
if you want to use markdown preview `deno` is required

[deno.com](https://deno.com/)

`brew install deno`
