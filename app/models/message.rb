class Message < ApplicationRecord
  after_create_commit { MessageJobBroadcastJob.perform_later self }
end

