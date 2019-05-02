#GitHub Sleep Pipeline for n Number of seconds

Sleep pipeline

## Installation 


# Sleep

Sleep workflow for a certain amount of time

## Usage

To use the action simply add the following lines to your `.github/main.workflow`

```
action "installswagger" {
  uses = "rays-of-sunshine-app/actions/sleep@master"
  args = "seconds to sleep"
}
```

### Required Arguments

The only argument used or required is the message to print

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).