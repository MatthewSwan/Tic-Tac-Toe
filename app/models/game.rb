class Game < ActiveRecord::Base
  belongs_to :users
  serialize :board, JSON
end
