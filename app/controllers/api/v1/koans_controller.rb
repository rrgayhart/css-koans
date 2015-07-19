module Api
  module V1
    class KoansController < Api::BaseController
      def show
        koan = Koan.find_by(id: params[:id])
        if koan
          render json: koan,
            include: [ :problem,
                        { solution:
                          { methods: [:top_crop_image_url] }
                        }
                      ]
        else
          head :not_found
        end
      end
    end
  end
end
