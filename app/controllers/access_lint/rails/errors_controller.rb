module AccessLint
  module Rails
    class Error < Exception; end

    class ErrorsController < AccessLint::Rails::ApplicationController
      def create
        raise Error, params.fetch(:results)

        head :ok
      end
    end
  end
end
