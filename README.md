# Open Weather API Testing

In order to run the tests written in this repository run rspec in the terminal by entering the following command in the terminal:

```
rspec
```
Documentation and matchers for rspec can be found at the following links:

[RSPEC Documentation](http://www.rubydoc.info/gems/rspec-core/frames)

[RSPEC Matchers](https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers)
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

### How to add new tests

To add a test a method for the test must be created in the corresponding service. For the city name service an example method would be:

```ruby
def get_weather_by_city(city)
  @weather_by_city_data = JSON.parse(self.class.get("?q=#{city}&APPID=14f28a90728e4b499b44fa0ba7a8f971").body)
end

def get_status_code_city
  @weather_by_city_data['cod']
end
```
The first method produces the data by parsing the api into the ruby file using a city name generated randomly using a json file with many example cities.

The second method then returns the value of the status cod which should be 200 if the city used is a valid city name for the API.

A test for this method would then look like the following in the corresponding spec file:

```ruby
it "Status code should equal 200" do
  expect(@weatherdata.get_status_code_city).to eq(200)
end
```

This runs the method above and checks the status is 200.

### Difficulties

I had difficulties randomly generating the data initially and for the random zip code generator the gem only seems to work for particular zip codes and therefore the tests don't work for this most of the time.

### What went well

I managed to produce tests for all the different types of service that all work when the test is run and I eventually got the other types of service random generators working.
