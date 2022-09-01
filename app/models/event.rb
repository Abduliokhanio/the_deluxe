class Event < ApplicationRecord
 [ :performer, :content, :event_time ].each do |attr|
    validates attr, presence: true
  end
end
