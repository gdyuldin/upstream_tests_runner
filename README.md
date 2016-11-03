# upstream_tests_runner

This repository contains scripts to run some openstack components functional tests on custom cloud. It should be started from one of controller node.

## Prerequisites

Run next commands on controller node:

```bash
$ sudo apt-get update
$ sudo apt-get install git python-pip python-dev libssl-dev
$ sudo pip install virtualenv
$ virtualenv .venv
$ source .venv/bin/activate
$ pip install -U pip
$ pip install tox
$ git clone https://github.com/gdyuldin/upstream_tests_runner
```

## Run all tests

```bash
$ . .venv/bin/activate
$ . openrc
$ cd upstream_tests_runner
$ tox
```

## List available tests sets

```bash
$ . .venv/bin/activate
$ . openrc
$ cd upstream_tests_runner
$ tox -l
```

## Run specified tests sets

```bash
$ . .venv/bin/activate
$ . openrc
$ cd upstream_tests_runner
$ tox -e heat
```
