# Netlify Dynamic DNS using Shell
A lightweight shell script designed to be running as a cron job. It fetches you public IP v4 address and updates your Netlify DNS with it.

It's build with speed, efficiency and maintainability in mind. Using only one external dependency it can run almost anywhere.

## Installation
### Clone this repo
```sh
git clone https://github.com/filipjohansson/netlify-dynamic-dns-shell.git
```

### Dependencies
One of the main goals of this project is to keep the amount of external dependencies to an absolute minimum. We only have one external dependency and that is [jq](https://stedolan.github.io/jq/). You will find it in your favourite package manager.

## How to use
The script is using environment variables. You can and should use the following variables, all of them are mandatory.

| Name | Example | Description |
| ---- | ---- | ---- |
| ACCESS_TOKEN | abc123 | Your personal access token that can be created here: [Netlify OAuth applications](https://app.netlify.com/account/applications) |
| DOMAIN | example.com | The domain you want to update the DNS for, do **not** include the subdomain here |
| SUBDOMAIN | photos | The subdomain you want to update the DNS for, in this example the full domain would be photos.example.com |

It's up to you how you want to manage your environment variables, but if you don't like to mess with them you can run the script like this.
```sh
ACCESS_TOKEN="YOUR_ACCESS_TOKEN" DOMAIN="example.com" SUBDOMAIN="photos" ./netlify-ddns
```

If you keep your environment variables somewhere else you run the script like this
```sh
./netlify-ddns
```
