require 'spec_helper'

describe Sightings do
  it {should belong_to :species}
  it {should validate_presence_of :latitude}
  it {should validate_presence_of :longitude}
  it {should validate_presence_of :date}
end
