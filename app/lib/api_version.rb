class ApiVersion
  attr_reader :version, :default

  def initialize(version, default = { forced: false })
    @version = version
    @default = default
  end

  # check whether version is specified or is default
  def matches?(request)
    check_headers(request.headers) || default
  end

  private

  def check_headers(headers)
    # check version from Accept headers; expect custom media type 'suits'
    accept = headers[:accept]
    accept&.include?("application/vnd.suits.#{version}+json")
  end
end
