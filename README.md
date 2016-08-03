# Eloszka

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create a `dev.secret.exs` file in `config`. Example file is:

    `# Configure your database  
    config :eloszka, Eloszka.Repo,
      adapter: Ecto.Adapters.Postgres,

      username: "your_username",  
      password: "some_password",

      database: "eloszka_dev",  
      pool_size: 20
`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: http://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
