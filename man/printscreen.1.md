printscreen(1) -- screenshot helper
===================================

## SYNOPSIS

`printscreen` <var>command</var> [<var>argument</var>...]<br>
`printscreen` `-h` | `--help`

## DESCRIPTION

**printscreen** takes a screenshot with scrot(1) passing it given
<var>argument</var>s, and passes generated file to <var>command</var>.

The **scrot**(1) `-e` option will be used to execute <var>command</var>.

If the command returns 0, its output is copied to clipboard using **xclip**(1).
**xsel**(1) is not used because it seems not to work in **i3**(1) key bindings.

If **notify-send**(1) is available, a notification will be sent after executing
**scrot**(1), with a success or error message.

## OPTIONS

* `-h`, `--help`:
  Show the man page.

## EXAMPLES

Using **noelup**(1) to upload the screenshot, grabbed with cursor thanks to
**scrot**(1)'s `-s` option.

```sh
printscreen noelup -s
```

## SEE ALSO

**scrot**(1), **xclip**(1), **notify-send**(1)


[SYNOPSIS]: #SYNOPSIS "SYNOPSIS"
[DESCRIPTION]: #DESCRIPTION "DESCRIPTION"
[OPTIONS]: #OPTIONS "OPTIONS"
[EXAMPLES]: #EXAMPLES "EXAMPLES"
[SEE ALSO]: #SEE-ALSO "SEE ALSO"


[printscreen(1)]: printscreen.1.html
