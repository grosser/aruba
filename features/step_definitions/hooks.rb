require 'cucumber/platform'

Before '@requires-python' do |scenario|
  next unless Aruba.platform.which('python').nil?

  if Cucumber::VERSION < '2'
    scenario.skip_invoke!
  else
    skip_this_scenario
  end
end

Before '@requires-zsh' do |scenario|
  next unless Aruba.platform.which('zsh').nil?

  if Cucumber::VERSION < '2'
    scenario.skip_invoke!
  else
    skip_this_scenario
  end
end

Before '@requires-java' do |scenario|
  next unless Aruba.platform.which('javac').nil?

  if Cucumber::VERSION < '2'
    scenario.skip_invoke!
  else
    skip_this_scenario
  end
end

Before '@requires-perl' do |scenario|
  next unless Aruba.platform.which('perl').nil?

  if Cucumber::VERSION < '2'
    scenario.skip_invoke!
  else
    skip_this_scenario
  end
end

Before '@requires-ruby' do |scenario|
  next unless Aruba.platform.which('ruby').nil?

  if Cucumber::VERSION < '2'
    scenario.skip_invoke!
  else
    skip_this_scenario
  end
end

Before '@requires-bash' do |scenario|
  next unless Aruba.platform.which('bash').nil?

  if Cucumber::VERSION < '2'
    scenario.skip_invoke!
  else
    skip_this_scenario
  end
end

Before '@requires-sleep' do |scenario|
  next unless Aruba.platform.which('sleep').nil?

  if Cucumber::VERSION < '2'
    scenario.skip_invoke!
  else
    skip_this_scenario
  end
end

Before '@requires-env' do |scenario|
  next unless Aruba.platform.which('env').nil?

  if Cucumber::VERSION < '2'
    scenario.skip_invoke!
  else
    skip_this_scenario
  end
end

Before '@requires-cat' do |scenario|
  next unless Aruba.platform.which('cat').nil?

  if Cucumber::VERSION < '2'
    scenario.skip_invoke!
  else
    skip_this_scenario
  end
end

Before '@requires-platform-windows' do |scenario|
  next if FFI::Platform.windows?

  if Cucumber::VERSION < '2'
    scenario.skip_invoke!
  else
    skip_this_scenario
  end
end

Before '@requires-posix-standard-tools' do |scenario|
  next unless Aruba.platform.which('printf').nil?

  if Cucumber::VERSION < '2'
    scenario.skip_invoke!
  else
    skip_this_scenario
  end
end

Before '@requires-ruby-version-2' do |scenario|
  next if RUBY_VERSION >= '2'

  if Cucumber::VERSION < '2'
    scenario.skip_invoke!
  else
    skip_this_scenario
  end
end

Before '@requires-ruby-platform-java' do |scenario|
  # leave if java
  next if RUBY_PLATFORM.include? 'java'

  if Cucumber::VERSION < '2'
    scenario.skip_invoke!
  else
    skip_this_scenario
  end
end

Before '@unsupported-on-platform-java' do |scenario|
  # leave if not java
  next unless RUBY_PLATFORM.include? 'java'

  if Cucumber::VERSION < '2'
    scenario.skip_invoke!
  else
    skip_this_scenario
  end
end

Before '@unsupported-on-platform-windows' do |scenario|
  # leave if not windows
  next unless FFI::Platform.windows?

  if Cucumber::VERSION < '2'
    scenario.skip_invoke!
  else
    skip_this_scenario
  end
end

Before '@requires-readline' do
  begin
    require 'readline'
  rescue LoadError
    if Cucumber::VERSION < '2'
      skip_invoke!
    else
      skip_this_scenario
    end
  end
end

Before '@unsupported-on-platform-unix' do |scenario|
  # leave if not windows
  next unless FFI::Platform.unix?

  if Cucumber::VERSION < '2'
    scenario.skip_invoke!
  else
    skip_this_scenario
  end
end

Before '@unsupported-on-platform-mac' do |scenario|
  # leave if not windows
  next unless FFI::Platform.mac?

  if Cucumber::VERSION < '2'
    scenario.skip_invoke!
  else
    skip_this_scenario
  end
end
