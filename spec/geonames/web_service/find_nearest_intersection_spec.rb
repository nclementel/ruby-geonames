require 'spec_helper'

module Geonames
  describe WebService do
    describe ".find_nearest_intersection" do
      subject { WebService.find_nearest_intersection(latitude, longitude) }
      let(:response) { File.read File.join(File.dirname(__FILE__), '..', '..', 'fixtures', 'find_nearest_intersection', fixture) }

      before { FakeWeb.register_uri :get, /\/findNearestIntersection\?.*lat=#{latitude}&lng=#{longitude}/, :response => response }
      let(:fixture) { "park_ave_and_e_51st_st.xml.http" }

      let(:latitude)  { +43.900120387 }
      let(:longitude) { -78.882869834 }

      it { should be_a_kind_of(Intersection) }
    end
  end
end
