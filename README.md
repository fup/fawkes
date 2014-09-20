# Fawkes

To start your new Phoenix application you have to:

## Production

```
git push heroku master
```

or if you are in a dev branch:

```
git push heroku <dev_branch>:master
```

## Development

1. Install dependencies with `mix deps.get`
2. Start Phoenix router with `mix phoenix.start`

Now you can visit `localhost:4000` from your browser.


## Notes

* If you choose to change the application's structure, you could manually start the router from your code like this `Fawkes.Router.start`
