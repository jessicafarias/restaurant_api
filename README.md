# Restaurant Application Programming Interface

##### This is a back-end API, which provides data to [this application](https://github.com/jessicafarias/restaurant_app/tree/feature/milestone) that I developed.

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]

<!-- PROJECT LOGO -->
  <h3 align="center">Track</h3>

  <p align="center">
    This project is created with the porpuse of make comments on different restaurants<br /></p>

<!-- ABOUT THE PROJECT -->

#### Features:
- All users are allowed to make comments on each restaurant
- The API render JSON Objects
- All images are located in the cloud (cloudinary) using Active Storage

#### Base URL for request
It's deployed [here](https://restaurant-api3.herokuapp.com/) on heroku

### Built With
This project was built using these technologies.
* Ruby on Rails
* rack-cors
* GitHub
* Rubocop
* Stylelint


### Getting Started
To get a local copy up and running follow these simple example steps.

### Clone
* Clone this repo:
  - Clone with SSH:
  ```
    git@github.com:jessicafarias/restaurant_api.git
  ```
  - Clone with HTTPS
  ```
    https://github.com/jessicafarias/restaurant_api.git
  ```
  - Clone with GitHub CLI
  ```
    gh repo clone jessicafarias/restaurant_api.git
    
 - cd to restaurant_api.git


### Setup

Install dependencies:

```
$ bundle install
```

Start the local webserver:

```$ rails s -p 3002``` will open the project at local webserver at http://localhost:3002/ 

### Using | Requests examples using JS

for all request you will need base URL:
const baseUrl = `https://restaurant-api3.herokuapp.com/


#### Get Restaurant details
```
  const url = `${baseUrl}/restaurants/${id}`;

  const response = await fetch(url, {
    method: 'GET',
    mode: 'cors',
    redirect: 'follow',
  });
```

#### Get all restaurants registered
```
  const url = `${baseUrl}/restaurants/${name}`;

  const response = await fetch(url, {
    method: 'GET',
    mode: 'cors',
    redirect: 'follow',
  });
```

#### Create a new comment/opinion
```
  const url = `${baseUrl}/opinions`;
  const response = await fetch(url, {
    method: 'POST',
    mode: 'cors',
    headers: { 'Content-Type': 'application/json' },
    redirect: 'follow',
    body: JSON.stringify(data),
  });
```
## future implementation
- All users need to sign up and login.
- The users can manage the a restaurant 
- User can manage the photos unloaded
- The opinions can be modify by the author.
- Testing using rspec
- Validation and restrictions that will interact with the Front-End application.

## Author

## 👤 Jessica Michelle Farías Rosado:

 [![Website](https://img.shields.io/badge/-Website-black?style=for-the-badge&logo=Julia&logoColor=white)](https://jessicafarias.github.io/)

 [![LINKEDIN](https://img.shields.io/badge/-LINKEDIN-0077B5?style=for-the-badge&logo=Linkedin&logoColor=white)](https://www.linkedin.com/in/jessica-michelle-farias-rosado/)

 [![EMAIL](https://img.shields.io/badge/-EMAIL-D14836?style=for-the-badge&logo=Mail.Ru&logoColor=white)](mailto:jessica.farias.rosado@gmail.com)
 
 [![TWITTER](https://img.shields.io/badge/-TWITTER-1DA1F2?style=for-the-badge&logo=Twitter&logoColor=white)](https://twitter.com/FariasRosado)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/jessicafarias/restaurant_api/issues).

## Show your support

Give a :star: if you like this project!



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/jessicafarias/restaurant_api.svg?style=flat-square
[contributors-url]: https://github.com/jessicafarias/restaurant_api/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/jessicafarias/restaurant_api.svg?style=flat-square
[forks-url]: https://github.com/jessicafarias/restaurant_api/network/members
[stars-shield]: https://img.shields.io/github/stars/jessicafarias/restaurant_api.svg?style=flat-square
[stars-url]: https://github.com/jessicafarias/restaurant_api/stargazers
[issues-shield]: https://img.shields.io/github/issues/jessicafarias/restaurant_api.svg?style=flat-square
[issues-url]: https://github.com/jessicafarias/restaurant_api/issues

## 📝 License

This project is [MIT](https://opensource.org/licenses/MIT) licensed.

