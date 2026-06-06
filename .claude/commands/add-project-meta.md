Add MIT LICENSE.txt and append standard sections to README.md, following the conventions used across rgomezjnr's projects.

## Steps

### 1. Gather context

- Derive the GitHub repo URL from `git remote get-url origin`. If no remote is set, infer it from the project folder name as `https://github.com/rgomezjnr/<folder-name>`.
- Use the current year for the copyright notice.

### 2. Create LICENSE.txt

Write `LICENSE.txt` in the project root with this exact content (substituting the current year):

```
MIT License

Copyright (c) <year> Robert Gomez, Jr.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

### 3. Append sections to README.md

Read the existing README.md, then append the following to the end (substituting the repo URL):

```markdown
## Support

If you find an issue or have any feedback please submit an issue on [GitHub](<repo-url>/issues).

You can also DM me via Twitter/X: [@rgomezjnr](https://x.com/rgomezjnr).

If you would like to show your support donations are greatly appreciated via:

- [GitHub Sponsors](https://github.com/sponsors/rgomezjnr)
- [PayPal](https://paypal.me/rgomezjnr)
- [Venmo](https://account.venmo.com/u/rgomezjnr)
- [Strike](https://strike.me/rgomezjnr)
- Bitcoin: bc1qh46qmztl77d9dl8f6ezswvqdqxcaurrqegca2p

## Author

[Robert Gomez, Jr.](https://github.com/rgomezjnr)

## Source code

<repo-url>

## License

[MIT](LICENSE.txt) © <year> Robert Gomez, Jr.
```
