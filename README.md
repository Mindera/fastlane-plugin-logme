# Logme
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
