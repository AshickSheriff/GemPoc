redis_config = Rails.application.credentials.redis[Rails.env.to_sym]
Redis.current = Redis.new(
  url: redis_config[:url],
  port: redis_config[:port],
  db: redis_config[:db]
)
