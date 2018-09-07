require 'simplecov-message/version'
require 'simplecov'

SimpleCov.profiles.define 'min_coverage_message' do
  load_profile 'rails'
  SimpleCov.at_exit do
    result.format!
    if result.covered_percent.round(2) < minimum_coverage
      puts "\n\e[0;31m*** MINIMUM CODE COVERAGE OF #{minimum_coverage}% WAS NOT MET ***\e[m"
    else
      puts "\n\e[0;32m*** #{minimum_coverage}% CODE COVERAGE REACHED ***\e[m"
    end
  end
end

SimpleCov.profiles.define 'require_full_coverage' do
  minimum_coverage 100
  load_profile 'min_coverage_message'
end

SimpleCov.profiles.define 'require_90pct_coverage' do
  minimum_coverage 90
  load_profile 'min_coverage_message'
end

SimpleCov.profiles.define 'require_80pct_coverage' do
  minimum_coverage 80
  load_profile 'min_coverage_message'
end
