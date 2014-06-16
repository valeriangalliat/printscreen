PrintScreen
===========

**PrintScreen** is a screenshot tool to execute a custom action after
taking a screenshot, and optionally send a notification.

See the [manpage](https://valeriangalliat.github.io/printscreen/) for more
details.

Dependencies
------------

* `scrot`
* `xclip`
* `notify-send` (optional)

Installation
------------

Example installation for a local usage, assuming `~/bin` is in your `PATH`.

```sh
mkdir -p ~/bin ~/opt
cd "$_"
git clone "https://github.com/valeriangalliat/printscreen.git"
ln -s ~/opt/printscreen/printscreen ~/bin/printscreen
```
