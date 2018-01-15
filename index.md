---
layout: page
---

Keep your typeface font files up-to date.
  
## Installing

fontctrl is currently under development and is experimental software.
The easiest way to install the latest release is to run the following in a
terminal:

```
curl -o- -L https://fontctrl.org/install.sh | bash -s
```

Currently only macOS is supported, but Windows and Linux support is coming soon.

If you rather prefer to install fontctrl manually, you can
[download the latest release](https://github.com/rsms/fontctrl/releases/latest/).

## Main repository

There's a main repository of freely distributable fonts maintained by
the Font Control group. It's URL is:

```
https://fontctrl.org/fonts/
```

## Configuration

fontctrl reads its configuration from a text file that you can edit to change
what sources (repositories) your fonts are being installed from.
fontctrl looks for the configuration file in the following locations, in order:

- [macOS, linux] `~/.fontctrl.json`
- [windows] `%USERPROFILE%\AppData\Local\fontctrl\fontctrl.json`
- `./.fontctrl.json`
- `./fontctrl.json`

Shape of the configuration file:

```json
{
  "repos": [
    { "url": "<repo_url>" }
  ],
  "font_dir": "<font_dir>"
}
```

- `repos` contain an ordered listing of repositories from which to fetch fonts.
  A repo listed earlier takes precedence over a repo listed further down.
- `<repo_url>` should be fully-qualified URL to a [repository](/publish/)
- `<font_dir>` is optional and when present overrides the file system location
  where fontctrl will install and manage local font files.

In the future, the configuration file will be expanded to include account
identity for accessing restricted repositories.
