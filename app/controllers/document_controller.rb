class DocumentController < ApplicationController
  def door
    @prices = AssetsDoor.published
  end
  def floor
    @prices = AssetsFloor.published
  end
  def wall
    @prices = AssetsWall.published
  end
end
