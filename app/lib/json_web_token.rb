class JsonWebToken
  # secret to encode and decode token
  HMAC_SECRET = Rails.application.secrets.secret_key_base
  ALGORITHM_TYPE = 'HS256'.freeze

  def self.encode(payload, exp = 24.hours.from_now)
    # set expiry to 24 hours from the creation time.
    payload[:exp] = exp.to_i

    # sign token with application secret
    JWT.encode(payload, HMAC_SECRET, ALGORITHM_TYPE)
  end

  def self.decode(token)
    # get payload, first index in decoded Array
    body = JWT.decode(token, HMAC_SECRET, true, { algorithm: ALGORITHM_TYPE })
    HashWithIndifferentAccess.new body
    # rescue from all decode errors
  rescue JWT::DecodeError => e
    # raise custom error to be handled by custom handler
    raise ExceptionHandler::InvalidToken, e.message
  end
end
