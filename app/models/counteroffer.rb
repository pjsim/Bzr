class Counteroffer < ActiveRecord::Base
  belongs_to :offer, :dependent => :destroy
end
