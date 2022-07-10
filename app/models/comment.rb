class Comment < ApplicationRecord
  include Visible

  belongs_to :joke
end
