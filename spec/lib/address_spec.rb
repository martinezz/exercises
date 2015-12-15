require "spec_helper"
require "address"

describe Address do
  describe "#to_s" do
    address = Address.new(
      street: "Kmicica 31",
      city: "Bielsko-Biała",
      zip: "43-300",
      country: "Poland"
    )

    expect(address.to_s).to eq "ul. Kmicica 31\n43-300 Bielsko-Biała\nPOLAND"
  end

  describe "#complete?" do
    address_1 = Address.new(
      street: "Kmicica 31"
    )

    address_2 = Address.new(
      street: "Kmicica 31",
      city: "Bielsko-Biała"
    )

    address_3 = Address.new(
      street: "Kmicica 31",
      city: "Bielsko-Biała",
      zip: "43-300"
    )

    address_4 = Address.new(
      street: "Kmicica 31",
      city: "Bielsko-Biała",
      zip: "43-300",
      country: "Poland"
    )

    expect(address_1.complete?).to eq false
    expect(address_2.complete?).to eq false
    expect(address_3.complete?).to eq false
    expect(address_4.complete?).to eq true
  end

  describe "#domestic?" do
    address_1 = Address.new(country: "Poland")
    address_2 = Address.new(country: "USA")
    address_3 = Address.new(country: "whatever")


    expect(address_1.domestic?).to eq true
    expect(address_2.domestic?).to eq false
    expect(address_3.domestic?).to eq false
  end


  describe "#contact_information" do
    address = Address.new(
      phone_numbers: ["123-456", "789-098"]
    )

    expect(address.contact_information).to eq "Phone 1: 123-456\nPhone 2: 789-098"
  end
end
