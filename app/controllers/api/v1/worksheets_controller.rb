class Api::V1::WorksheetsController < ApplicationController

    def index
        worksheets = Worksheet.all
        render json: WorksheetSerializer.new(worksheets)
    end

    def show
        # byebug
        worksheet = Worksheet.find_by(id: params[:id])

        render json: WorksheetSerializer.new(worksheet)
    end

    def create
        worksheet = Worksheet.new(user_id: params[:userId])

        if worksheet.save
            params[:sections][:loves].each{| love | worksheet.love.create!(content: love)}
            params[:sections][:goodAts].each{| g | worksheet.good_ats.create!(content: g)}
            params[:sections][:worldNeeds].each{| wn | worksheet.world_needs.create!(content: wn)}
        end

        if !worksheet.love.empty? && !worksheet.good_ats.empty? && !worksheet.world_needs.empty?
            # completed_worksheet = [] 
            # completed_worksheet.push(worksheet.love, worksheet.good_ats, worksheet.world_needs)

            render json: WorksheetSerializer.new(worksheet), status: :created
        else
            resp = { error: worksheet.errors.full_messages.to_sentence}
            render json: resp, status: :unprocessable_entity
        end
    end
end
