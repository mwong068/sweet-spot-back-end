# Sweet Spot - Back End

<!--- These are examples. See https://shields.io for others or to customize this set of shields. You might want to include dependencies, project status and licence info here --->
![GitHub repo size](https://img.shields.io/github/repo-size/mwong068/sweet-spot-back-end)
![GitHub stars](https://img.shields.io/github/stars/mwong068/sweet-spot-back-end)
![GitHub forks](https://img.shields.io/github/forks/mwong068/sweet-spot-back-end)
![Twitter Follow](https://img.shields.io/twitter/follow/mwong068?style=social)

## About

Sweet Spot is a marketplace for pastry chefs and small bakeries and restaurants to share their baked goods with their community. It was made to bring communities together and to highlight smaller businesses.

This was my final project at Flatiron School and is a combination of Rails, React, Redux, Thunk, JWT, and the Stripe API. 

### How it works

This repository contains the database and backend structure necessary to correctly run the entire Sweet Spot project.

## Features

- Ruby on Rails web server using [Rails](https://rubyonrails.org/)
- JSON Web Token authentication using [JWT](https://github.com/jwt/ruby-jwt) gem
- Serialization using [active_model_serializers](https://github.com/rails-api/active_model_serializers) gem
- Configuration of environment variables using [dotenv](https://github.com/bkeepers/dotenv) gem

## How to use it

1. Create a clone of this repo using [GitHub's repository cloning](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository-from-github) functionality
2. Locate the folder in your system and follow the steps below to run the server

## Set up

### Prerequisites

Before you begin, ensure you have met the following requirements:
<!--- These are just example requirements. Add, duplicate or remove as required --->
* You have installed the latest version of [Ruby on Rails](https://rubyonrails.org/) - `Rails 6.0.2.1`
* You have also cloned the [frontend portion](https://github.com/mwong068/sweet-spot-front-end).
* In order to run this project you will need to create a Stripe account - [sign up](https://dashboard.stripe.com/register)

### Stripe Account Settings

This application should come with sample data of pastry products available to purchase. Before we begin, we need to collect all the config values we need to run the application:

| Config&nbsp;Value | Description                                                                                                                                                  |
| :---------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Secret&nbsp;Key  | Your primary Stripe account identifier - find this [in the Dashboard](https://dashboard.stripe.com/).                                                         |

### Local development

After the above requirements have been met:

1. Clone this repository and `cd` into it

```bash
git clone https://github.com/mwong068/sweet-spot-back-end.git
cd sweet-spot-back-end
```

2. Install dependencies

```bash
bundle install
```

3. Set your environment variables

Follow the guide at [dotenv](https://github.com/bkeepers/dotenv) for Rails.

Create a .env file at the root of the project directory
```bash
touch .env
```

Correctly set up the .env file following the format below:
```bash
STRIPE_SECRET_KEY=(place key here without parentheses)
```

See [Stripe Account Settings](#stripe-account-settings) to locate the necessary environment variables.

4. Set up the database

```bash
rails db:create
rails db:migrate
rails db:seed
```

This will be loaded with starter data so you can see an example of the application functionality.

4. Run the application

```bash
rails server
```

5. Navigate to [http://localhost:3000](http://localhost:3000)

After the server is running, you will need to start the [frontend portion](https://github.com/mwong068/sweet-spot-front-end) to see the full application.


Please let me know if you have any trouble getting this to correctly work.


## Resources

- [Stripe API Documentation](https://stripe.com/docs/api)
- [Implementing Stripe with Rails and React](https://medium.com/@gaidaescobar/using-stripe-api-with-react-and-ruby-b50c533a697f)


## Contact

If you want to contact me you can reach me at `mwong068@gmail.com`

You can also check out my personal portfolio at `www.megan-wong.com`


## Disclaimer

No warranty expressed or implied. Software is as is.
