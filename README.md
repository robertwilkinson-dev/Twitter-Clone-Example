## TwitterDemo Backend

This is the backend for the TwitterDemo application. It is built using Elixir and Phoenix.

### Setup

To run this project, you need to have Elixir and Phoenix installed. You can use ASDF to install the correct versions of Elixir and Erlang.

You can find the installation instructions [here](https://asdf-vm.com/#/core-manage-asdf-vm) on how to install ASDF.

Once you have ASDF installed, you can install the required versions of Elixir and Erlang.

This project was created using the following versions of Elixir and Erlang:
- elixir *1.16.1-otp-26
- erlang *26.2.2

```bash
asdf plugin add erlang
asdf plugin add elixir
asdf install erlang 26.2.2
asdf install elixir 1.16.1-otp-26
```

You should now be ready to run the project.

---

### Running the project
To setup the project, run the following commands:

**Install dependencies**
```bash
mix setup
```

**Create the database**
```bash
mix ecto.create
```

**Create the database tables**
```bash
mix ecto.setup
```

**Seed the database with some data**
```bash
mix run priv/repo/seeds.exs
```

**Run the server**
```bash
mix phx.server
```

The server should now be running on `http://localhost:4000`.

to see the paths and the methods that you can use, run the following command:

```bash
mix phx.routes
```
