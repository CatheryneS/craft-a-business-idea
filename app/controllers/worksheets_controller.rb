class WorksheetsController < ApplicationController

    def index
        worksheets = Worksheet.all
        render json: worksheets
    end

    def create

    end
end
