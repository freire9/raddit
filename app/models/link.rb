class Link < ApplicationRecord
    acts_as_votable
    belongs_to :user
    validates :url, format: URI::regexp(%w[http https])

end
