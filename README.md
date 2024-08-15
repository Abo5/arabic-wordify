# arabic-wordify - Arabic Number to Words Converter

arabic-wordify is a Ruby gem that converts Arabic numbers into their word equivalents in Arabic. It supports numbers up to a septillion (1 followed by 24 zeros), including trillions, quadrillions, quintillions, sextillions, and septillions.

## Features

- **Comprehensive Number Conversion**: Convert any number from 0 up to 10^24 into its Arabic word equivalent.
- **Arabic Digits Support**: Automatically converts Arabic digits (٠١٢٣٤٥٦٧٨٩) to English digits before conversion.
- **Error Handling**: Properly handles invalid inputs, such as non-integer values or empty inputs.
- **Support for Large Numbers**: Includes support for large number names such as million, billion, trillion, and beyond.

## Installation

To install arabic-wordify, add this line to your application's Gemfile:

```ruby
gem 'arabic-wordify'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install arabic-wordify
```

## Usage

Using arabic-wordify in your Ruby application is simple. Here's an example:

```ruby
require 'arabic-wordify'

number = "٢٢٠٣٤٢٢"

str = ArabicWordify::ArabicNumberWords.convert_to_text(number)
puts str
```

This will output:

```
اثنان مليون و مائتان و ثلاثة آلاف و أربعمائة و اثنان و عشرون
```

### Note on Arabic Digits

If you want to input Arabic digits directly without using quotation marks, please note that Ruby does not natively support this. You must input Arabic digits as strings (e.g., `"٢٢٠٣٤٢٢"`). The `arabic-wordify` gem will automatically convert these Arabic digits into their English equivalents before processing them.

### Error Handling

arabic-wordify will raise an `ArabicWordifyError` if an invalid input is provided. For example:

```ruby
begin
  ArabicWordify.convert(nil)
rescue ArabicWordify::ArabicWordifyError => e
  puts e.message
end
```

This will output:

```
Failed to convert number to words: Number cannot be nil or empty
```

## Development

To set up your development environment:

1. Clone the repository:

```bash
$ git clone https://github.com/Abo5/arabic-wordify.git
$ cd arabic-wordify
```

2. Install dependencies:

```bash
$ bundle install
```

3. Run tests:

```bash
$ bundle exec rspec
```

## Testing

arabic-wordify uses RSpec for testing. All test files are located in the `spec/` directory. To run the tests, execute:

```bash
$ bundle exec rspec
```

Example test cases include:

- Converting various numbers to their word equivalents.
- Handling invalid inputs and ensuring appropriate errors are raised.

## Continuous Integration

arabic-wordify uses GitHub Actions for continuous integration. The configuration file is located at `.github/workflows/ruby.yml`. It ensures that every push and pull request is automatically tested on the specified Ruby versions.

## Contributing

Bug reports and pull requests are welcome on GitHub at [arabic-wordify repository](https://github.com/Abo5/arabic-wordify). This project is intended to be a safe, welcoming space for collaboration.

## License

arabic-wordify is available as open-source under the terms of the [MIT License](https://github.com/Abo5/arabic-wordify/blob/main/LICENSE).

## Future Plans

- **Internationalization**: Extend support to more languages.
- **Additional Number Formats**: Support for ordinal numbers and other formats.

## Support

If you encounter any issues or have questions, please open an issue on GitHub or contact the maintainers.

## Acknowledgements

This project was inspired by the need for a robust Arabic number-to-word converter that supports large numbers and provides accurate results in the Arabic language.# arabic-wordify
