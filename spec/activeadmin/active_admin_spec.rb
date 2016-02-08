require 'rails_helper'

RSpec.describe "ActiveAdmin" do

  it "has the right resources" do
    expect(ActiveAdmin.application.namespaces[:admin].resources).to have_key("Artist") 
    expect(ActiveAdmin.application.namespaces[:admin].resources).to have_key("Song") 
  end

  let(:resource_class) { Artist }
  let(:all_resources)  { ActiveAdmin.application.namespaces[:admin].resources }
  let(:resource)       { all_resources[resource_class] } 

  it "Artists should not be deletable" do
    expect(resource.defined_actions).not_to include :destroy
  end
end
