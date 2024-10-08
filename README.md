# Netlify Dynamic DNS using Shell
A lightweight shell script designed to be running as a cron job. It fetches you public IP v4 address and updates your Netlify DNS with it. It supports updating multiple subdomains.

It's build with speed, efficiency and maintainability in mind. Using only two external dependency, it can run almost anywhere.

## Installation
### Clone this repo
```sh
git clone https://github.com/filipjohansson/netlify-dynamic-dns-shell.git
```

### Dependencies
One of the main goals of this project is to keep the amount of external dependencies to an absolute minimum. We only have two external dependency and those are [curl](https://curl.se/) and [jq](https://jqlang.github.io/jq/). You will find them in your favourite package manager.

## How to use
The script is using environment variables. You can, and should, use the following variables, all of them are mandatory.

| Name | Example | Description |
| ---- | ---- | ---- |
| ACCESS_TOKEN | abc123 | Your personal access token that can be created here: [Netlify OAuth applications](https://app.netlify.com/account/applications) |
| DOMAIN | example.com | The domain you want to update the DNS for, do **not** include the subdomain here |
| SUBDOMAINS | photos,cats _or_ photos | Comma separated list of subdomains you want to update the DNS for, in this example the full domain would be photos.example.com and cats.example.com. Leave out the comma if you only want to update one subdomain |

It's up to you how you want to manage your environment variables, but if you don't like to mess with them you can run the script like this.
```sh
ACCESS_TOKEN="YOUR_ACCESS_TOKEN" DOMAIN="example.com" SUBDOMAINS="photos,cats" ./netlify-ddns
```

If you keep your environment variables somewhere else you run the script like this
```sh
./netlify-ddns
```
