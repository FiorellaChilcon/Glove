# frozen_string_literal: true

# MainController Home view
class MainController < ApplicationController
  before_action :requires_user_logged_in!
  def index; end
end
