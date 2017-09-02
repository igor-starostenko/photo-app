# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :null_session,
    only: Proc.new { |c| c.request.format.json? }
end
