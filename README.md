# Ice-bergtech tap

A repository for Homebrew formulae maintained by Iceberg Tech.

To use, you will need to [install Homebrew](https://docs.brew.sh/Installation).

## How do I install these formulae?

List available formulae:

```sh
brew search ice-bergtech/tap
```

Install a formula:

```sh
brew install ice-bergtech/tap/<formula>
```

Add the tap to Homebrew:

```sh
brew tap ice-bergtech/tap
```

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "ice-bergtech/tap"
brew "<formula>"
```

## Formulae

List of formulae available in this tap:

- **kr8+**: [ice-tech/kr8](https://github.com/ice-tech/kr8) kr8+ is an opinionated configuration management tool for Kubernetes Clusters

```sh
brew install ice-bergtech/tap/kr8
```

---

## Development

To publish formulae changes, use tools that package you code for you.

* **golang**: [goreleaser](https://goreleaser.com/quick-start/)

For things related to Homebrew use `brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

## Contributing

We welcome contributions from the community to enhance **kr8+**.

Fork the repo in github and send a merge request!

## License

The project is licensed under the [MIT license](LICENSE).
