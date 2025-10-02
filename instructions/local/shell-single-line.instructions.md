---
description: Shell single-line only
applyTo: "*"
---

## Shell single-line only
When the AI writes shell commands for macOS (zsh):

* **Never** use heredoc (`cat <<EOF`), `cat >`, or literal newlines.
* Use `printf '%s\n' … > FILE` **or** write to `/tmp/…` and `mv` instead.
* Combine all content in one command to keep it single-line.

### Example
```bash
# BAD (blocked)
cat <<EOF > ~/.zshrc
export PATH="$HOME/bin:$PATH"
EOF

# GOOD (allowed)
printf '%s\n' 'export PATH="$HOME/bin:$PATH"' >> ~/.zshrc
```