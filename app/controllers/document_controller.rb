class DocumentController < ApplicationController
  def door
    @prices = AssetsDoor.published
  end
  def floor
  end
  def wall
  end
end
