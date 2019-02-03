# openweathermap-api
https://openweathermap.org/api

### Description
This application fetches two types of data from the openweathermap API; the current weather data and the 5 day forecast. Using spec, there are sets of unit tests which test the validity of the openweathermaps data. Numerous unit tests have been set-up and tested using the rspec gem. The use of HTTParty is required to fetch the API, allowing it to be tested.

### Languages used
* Ruby

### How to download
1. Clone the Git repo
2. Open the files and run bundler to install gems
3. You will now be able to run the tests using rspec!

``` 
gem 'httparty'
gem 'json'
gem 'rspec'
```

### How to use
To use the tests for yourself you can move the lib file in your own project. You will need to obtain your own API key in order for this to work and set up and dotenv file. Create a ```.env``` and add this line of code:
```
API_KEY=[Enter API key here]
```
In here place the API key and in terminal set up rspec using ```rspec --init```.

### Challenges 
1. Setting up the dotenv folder and retrieving the API key that folder
2. Had issues with the initial loop testing, and calling the first data point into the loop

### Learning points
1. Learned how to retrieve API key from a different folder
2. Learned how to deal with generated data outputs which require two types of data types to test (i.e. Float and Integer)
