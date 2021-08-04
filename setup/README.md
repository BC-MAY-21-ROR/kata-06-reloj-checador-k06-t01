# Check clock

Check clock is a project for a company that needs to control the attendance of its employees, obtaining the time of entry and exit along with the date, where the employee will enter this data through his private number. 

## Starting 🚀

_These instructions will allow you to get a copy of the project running on your local machine for development and testing purposes._

### Pre-requisitos 📋

- ruby
- rails
- postgres

### Instalation 🔧

Clone the repository from our console

```
git clone https://github.com/BC-MAY-21-ROR/kata-06-reloj-checador-k06-t01.git
```
once the project has been cloned we create a file called .env in the root of our project similar to the .env.example file, in it we can do the following:

- DB_NAME= reloj_checador_depelopment
- DB_HOST= localhost
- DB_USERNAME= username
- DB_PASSWORD= password

we do bundle install to download all the gems of the project

```
bundle install
```

type the yarn command to install the dependencies

```
yarn install
```

run the webpacker command

```
rails webpacker:install
```

we execute migrations

```
rails db:migrate
```

## Running the tests ⚙️

to run the tests in rspec, we will put in console the following:

```
rspec spec/models/"name_of_spec_file"
```

## Building with 🛠️

* [Ruby on rails](https://rubyonrails.org/) - Framework used
* [Postgresql](https://www.postgresql.org/) - Database used


## Autors ✒️

* **Ariel cabrera** - [villanuevand](https://github.com/juliocabrera820)
* **Jairo Olan** - [fulanitodetal](https://github.com/jairolan)
