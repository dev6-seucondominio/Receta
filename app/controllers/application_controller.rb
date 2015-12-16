class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def render_layout
    render layout: 'layouts/application', html: ""
  end
end
