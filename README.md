# Open Weather API Testing

In order to run the tests written in this repository run rspec in the terminal by entering the following command in the terminal:

```
rspec
```

### Brief

This is a service object model where data from a weather API is parsed into a ruby programme in JSON format and then tested to check the data collected is correct.

The programme is split into classes so that the call to the object model is only made once per service when testing the data.

The data testing is produced dynamically using files with many examples that are randomly selected and given to the API to generate different data each time the tests are run.

For the zip code service random data is generated using the Faker gem which you will need to install to use this programme. Information for this gem can be found at the following link:

[Faker Gem](https://github.com/stympy/faker/blob/master/doc/address.md)

This programme also requires the JSON gem, RSPEC gem and HTTParty gem.

If these gems are not installed run the following in your terminal:

```
gem install rspec
gem install json
gem install httparty
```

The API used can be found at the following link:

[Open Weather API](http://openweathermap.org/current)

### Difficulties

I had difficulties randomly generating the data initially and for the random zip code generator the gem only seems to work for particular zip codes and therefore the tests don't work for this most of the time.

### What went well

I managed to produce tests for all the different types of service that all work when the test is run and I eventually got the other types of service random generators working.
