# logme plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-logme)

## Getting Started

This project is a [fastlane](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-logme`, add it to your project by running:

```bash
fastlane add_plugin logme
```

## About logme
Logme is an action that provides a simple way to get logs from two delta commits

## Why?
Has we use a Continues Delivery, we need a way to create release notes automatically

## How to use it?
Just invoke *logme* in your Fastfile action. Logme will return the commit messages

| Option | Description | Optional |
|---|---|---|
| `to_revision` | End revision commit | false |
| `from_revision` | From revision commit | false |
| `message_regexp_filters` | Regexp filters like. ie '^MDM-\|^CTS:' | true |

## Example
Check out the [example `Fastfile`](fastlane/Fastfile) to see how to use this plugin. Try it by cloning the repo, running `fastlane install_plugins` and `bundle exec fastlane test`.

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://docs.fastlane.tools/plugins/plugins-troubleshooting/) guide.

## Using `fastlane` Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://docs.fastlane.tools/plugins/create-plugin/).

## About `fastlane`

`fastlane` is the easiest way to automate beta deployments and releases for your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
