class Api::V1::AnimesController < Api::V1::ApiController
  before_action :set_anime, only: %i[show update destroy]

  def index
    @anime = Anime.all

    render json: @anime
  end

  def show
    render json: @anime
  end

  def create
    @anime = Anime.new(anime_params)

    if @anime.save
      render json: @anime, status: :created
    else
      render json: @anime.errors, status: :unprocessable_entity
    end
  end

  def update
    if @anime.update(anime_params)
      render json: @anime
    else
      render json: @anime.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @anime.destroy
  end

  private
    def set_anime
      @anime = Anime.find(params[:id])
    end

    def anime_params
      params.require(:anime).permit(:title, :plot, :release_date)
    end
end