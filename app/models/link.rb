class Link < ApplicationRecord
    belongs_to :user
    validates :url, format: URI::regexp(%w[http https])

end
