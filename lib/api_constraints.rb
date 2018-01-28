# Validates the client request headers before deciding which version of the API to use
class ApiConstraints
  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end

  def matches?(request)
    @default || request.headers['Accept'].include("application/vnd.marketplace.v#{@version}")
  end
end
