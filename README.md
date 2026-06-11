# 一日有痕

一日有痕 is a small local-first daily todo and reflection tool.

The app is a single static HTML file. It runs in the browser, stores data locally, and is designed for daily personal tracking:

- daily must-do list
- optional tasks
- habit check-ins
- monthly habit overview
- lightweight daily review
- local Obsidian/Markdown auto-sync workflow

## Use It Locally

Open `index.html` directly in a browser, or start a local preview server:

```bash
python3 -m http.server 8765
```

Then open:

```text
http://127.0.0.1:8765/index.html
```

For stable long-term use, choose one access method and keep using it. Browser local storage is scoped by origin, so `file://.../index.html` and `http://127.0.0.1:8765/index.html` may have separate data.

## Data

Daily Todo stores app data in your browser's local storage. Use the built-in Obsidian sync flow if you want durable Markdown notes outside the browser. After the first folder authorization, edits can be automatically synced to daily Markdown files.

## GitHub Pages

Because the app is plain static HTML, it can be hosted with GitHub Pages:

1. Push this repository to GitHub.
2. Open repository Settings.
3. Go to Pages.
4. Choose deployment from the `main` branch and root folder.
5. Open the generated Pages URL.

## Development

No build step is required. Edit `index.html` and refresh the browser.

## License

MIT
