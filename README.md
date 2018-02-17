# Prime Multiplication Table

[![Build Status](https://travis-ci.org/SebastianCoetzee/pmt.svg?branch=master)](https://travis-ci.org/SebastianCoetzee/pmt)

A command-line tool that prints a multiplication table of the first N prime numbers.

## Installation

There are two ways to install Prime Multiplication Table, either straight from RubyGems or from the repository.

### Installing from RubyGems

```
gem install pmt
```

### Installing from repository

Clone the repository:

```
git clone https://github.com/SebastianCoetzee/pmt.git
```

Change into the directory:

```
cd pmt
```

Build the gem:

```
gem build pmt.gemspec
```

Install the gem (replace `x` with the version number of the gem):

```
gem install pmt-x.x.x.gem
```

## Usage

Run the tool with the following command, which prints a multiplication table of the first 10 prime numbers:

```
pmt
```

Output:

```
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
|    | 2  | 3  | 5   | 7   | 11  | 13  | 17  | 19  | 23  | 29  |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
| 2  | 4  | 6  | 10  | 14  | 22  | 26  | 34  | 38  | 46  | 58  |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
| 3  | 6  | 9  | 15  | 21  | 33  | 39  | 51  | 57  | 69  | 87  |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
| 5  | 10 | 15 | 25  | 35  | 55  | 65  | 85  | 95  | 115 | 145 |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
| 7  | 14 | 21 | 35  | 49  | 77  | 91  | 119 | 133 | 161 | 203 |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
| 11 | 22 | 33 | 55  | 77  | 121 | 143 | 187 | 209 | 253 | 319 |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
| 13 | 26 | 39 | 65  | 91  | 143 | 169 | 221 | 247 | 299 | 377 |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
| 17 | 34 | 51 | 85  | 119 | 187 | 221 | 289 | 323 | 391 | 493 |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
| 19 | 38 | 57 | 95  | 133 | 209 | 247 | 323 | 361 | 437 | 551 |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
| 23 | 46 | 69 | 115 | 161 | 253 | 299 | 391 | 437 | 529 | 667 |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
| 29 | 58 | 87 | 145 | 203 | 319 | 377 | 493 | 551 | 667 | 841 |
+----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
```

You can specify the number of prime numbers:

```
pmt --count 5
```

Output:

```
+----+----+----+----+----+-----+
|    | 2  | 3  | 5  | 7  | 11  |
+----+----+----+----+----+-----+
| 2  | 4  | 6  | 10 | 14 | 22  |
+----+----+----+----+----+-----+
| 3  | 6  | 9  | 15 | 21 | 33  |
+----+----+----+----+----+-----+
| 5  | 10 | 15 | 25 | 35 | 55  |
+----+----+----+----+----+-----+
| 7  | 14 | 21 | 35 | 49 | 77  |
+----+----+----+----+----+-----+
| 11 | 22 | 33 | 55 | 77 | 121 |
+----+----+----+----+----+-----+
```

To see an explanation of the command line interface, use the help function:

```
pmt --help
```

# External Dependencies

- [commander](https://github.com/commander-rb/commander) for parsing command line arguments
- [terminal-table](https://github.com/tj/terminal-table) for formatting the table to STDOUT

## LICENSE

MIT
