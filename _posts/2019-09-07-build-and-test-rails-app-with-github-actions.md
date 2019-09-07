![](/assets/image/actions_1.png)

Github actions now supports CI/CD to automate how you build,test and deploy applications. With Github actions you can build, test and deploy your application on any platform including Linux,Mac Os and Windows. Actions support many languages and frameworks including Rails.

## Github Action Features 
- `Matrix build` - Test you application on multiple versions and platform
- `Live logs` - Provide rich feedback on build process
- `Automate workflows on any Event` - automate pull request,release and many events on Github
- `Integrated package and container registry` - Actions make it easier to publish and consume packages 

## Build and test a rails app 
Actions comes with suggested workflows which is appropriate for your project.

![](/assets/image/actions_2.png)

Lets have a look at the suggested Ruby workflow.
```
name: Ruby

on: [push]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v1
    - name: Set up Ruby 2.6
      uses: actions/setup-ruby@v1
      with:
        ruby-version: 2.6.x
    - name: Build and test with Rake
      run: |
        gem install bundler
        bundle install --jobs 4 --retry 3
        bundle exec rake

``` 
The first line specify the name of the workflow. Next specify when you want to run workflow,Actions supports almost all events including `push`,`pull_request`.
You can alo run on certain branches of your project.eg
```
on:
 push:
  branches:
   -master
   -release
```
Or only on `pull_request` to `master` branch 
```
on:
 pull_request:
  branches:
   -master
```
You can also schedule workflows to run at specific UTC time using [POSIX cron syntax](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/crontab.html#tag_20_25_07)
Below example trigger workflow every 30 minutes
```
on:
 schedule:
  - cron '*/30 * * * *'
```

The `runs-on` specify the operating system where workflow run. Github provides hosted runners for ubuntu,mac OS and windows.Some of the available virtual machines include `ubuntu-latest,ubuntu-18.04,windows-latest,windows-2019,macOS-latest`