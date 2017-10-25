# Snap

Make working with plans a snap. This is a set of tools that assist working with the packages built and stored in the `./results` directory by giving an easier way to index them.

![Listing Packages](https://user-images.githubusercontent.com/244426/32009170-e64b7682-b973-11e7-8d7b-317afed67258.png)

## Install

```bash
$ hab studio enter
(studio) $ hab pkg install franklinwebber/snap -b
```

## Using

Build your plans as you would.

```bash
$ build
```

Then run the `list` command:

```bash
$ list pkg_name
HEAD~5	- ./results/franklinwebber-snap-0.1.0-20171024033304-x86_64-linux.hart
HEAD~4	- ./results/franklinwebber-snap-0.1.0-20171024034255-x86_64-linux.hart
HEAD~3	- ./results/franklinwebber-snap-0.1.0-20171024035828-x86_64-linux.hart
HEAD~2	- ./results/franklinwebber-snap-0.1.0-20171024042033-x86_64-linux.hart
HEAD~1	- ./results/franklinwebber-snap-0.1.0-20171024042159-x86_64-linux.hart
HEAD	- ./results/franklinwebber-snap-0.1.1-20171024050350-x86_64-linux.hart
```

Start the second-to-last built package as a service

```bash
$ start pkg_name HEAD~1
# OR
$ start pkg_name ~1
```

Stop the service

```bash
$ stop pkg_name
```

Install the last built package and force it to binlink

```bash
$ install pkg_name HEAD -b -f
```

Upload the last built package

```bash
$ upload pkg_name HEAD
# OR
$ upload pkg_name
```

## Development

Prior to this project I would describe myself as new to the BASH language. This is a way for me to learn how to work with the language and make some tools for myself. If you can make the things better I would love a pull request or comments on the code.
