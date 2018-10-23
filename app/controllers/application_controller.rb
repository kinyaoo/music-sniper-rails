class ApplicationController < ActionController::API
  before_action :force_json
  before_action :set_cors
  # skip_before_action :verify_authenticity_token

  def force_json
     request.format = :json
  end

  def set_cors
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end
end
