# DashingBackgroundStatus

The background color of your widget (between green & red) is set according to the value you send it.

## Installation

Add this line to your application's Gemfile:

    gem 'dashing_background_status'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dashing_background_status

## Usage

In job file, in second send_event parameter, add a status hash :

    send_event('karma', { current: rand(1000), status: { good: 1, bad: 0, current: value } })

* **good** is the value when background color widget should be green
* **bad** is the value when background color widget should be red
* **current** is the widget current value ;)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
