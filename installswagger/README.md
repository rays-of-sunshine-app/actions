#GitHub Install  swagger-codegen for Build

The swagger-codegen is required for installation of our client library

## Installation 


# Install for swagger-codegen

Painful install of swagger-codegen

## Usage

To use the action simply add the following lines to your `.github/main.workflow`

```
action "installswagger" {
  uses = "rrays-of-sunshine-app/actions/installswagger@actions-add-install-and-test-for-client"
  args = "seconds to sleep"
}
```

### Required Arguments

The only argument used or required is the message to print

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).