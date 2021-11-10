> :construction: Work in progress! :construction:

# uxntal-test-suite

Test suite for the [Uxntal][uxntal] programming language, intended to be ran by various test runners for testing various Uxntal assemblers. Its primary purpose is to make sure that the source code is treated the same, and the same output is produced, regardless of the Uxntal assembler used in the process.

## Structure

```
.
├── test1
│   ├── input.tal
│   └── output.rom
├── subdirectory
│   ├── test2
│   │   ├── input.tal
│   │   ├── included.tal
│   │   └── output.rom
│   ├── test3
│   │   └── input.tal
│   └── test4
│       ├── input.tal
│       └── explanation.txt
└── index
```

Every directory with an `input.tal` file is a valid test case. The `input.tal` file should be passed as an input to the tested assembler. If the `output.rom` file is present in the same directory, it should be compared with the actual output of the assembler. If there is no `output.rom` file in the same directory, the test case expects no output &mdash; possibly because of an error, or specifically a non-zero exit code from the assembler.

The test case directory can contain more than one `.tal` file in case they are included (directly or indirectly) in the `input.tal` file with Uxntal's `include` keyword. Besides `.tal` files and the `output.rom` file, the test case directory can contain other files which should be ignored by the test runner.

`.tal` files are regular plain text files. `output.rom` files are binary files and are meant to be viewed and edited in hex editors. The rationale behind keeping expected output as a binary file instead of a serialized plain text file is the ease of comparing the actual and expected output byte by byte without the need of serializing or deserializing anything.

The `index` file at the root of the repository contains paths to every test case directory. Its primary purpose is for listing all the test cases on systems that have no way of reading the contents of directories (e.g. [Varvara][varvara]). At the same time, all systems can simply read the `index` file without the need to walk the directories recursively.

## Contributing

I appreciate your help!

To contribute, please read the [contributing instructions](CONTRIBUTING.md).

## License

This software is licensed under the MIT license.

See the [LICENSE](LICENSE) file for more details.

[uxntal]: https://wiki.xxiivv.com/site/uxntal.html
[varvara]: https://wiki.xxiivv.com/site/varvara.html
