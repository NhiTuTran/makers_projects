require "time_error"

RSpec.describe TimeError do
  it "returns the difference between the remote clock and local clock" do
    requester = double(:requester)
    expect(requester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"BST","client_ip":"92.234.242.88","datetime":"2022-10-13T20:37:54.722901+01:00","day_of_week":4,"day_of_year":286,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1665689874,"utc_datetime":"2022-10-13T19:37:54.722901+00:00","utc_offset":"+01:00","week_number":41}')
    time = Time.new(2022, 10, 13, 19, 37, 54)
    time_error = TimeError.new(requester)
    expect(time_error.error(time)).to eq 3600.722901
  end
end