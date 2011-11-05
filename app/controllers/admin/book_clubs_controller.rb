class Admin::BookClubsController < ApplicationController
  # GET /book_clubs
  # GET /book_clubs.json
  def index
    @book_clubs = BookClub.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @book_clubs }
    end
  end

  # GET /book_clubs/1
  # GET /book_clubs/1.json
  def show
    @book_club = BookClub.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @book_club }
    end
  end

  # GET /book_clubs/new
  # GET /book_clubs/new.json
  def new
    @book_club = BookClub.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @book_club }
    end
  end

  # GET /book_clubs/1/edit
  def edit
    @book_club = BookClub.find(params[:id])
  end

  # POST /book_clubs
  # POST /book_clubs.json
  def create
    @book_club = BookClub.new(params[:book_club])

    respond_to do |format|
      if @book_club.save
        format.html { redirect_to admin_book_club_path(@book_club), notice: 'Book club was successfully created.' }
        format.json { render json: @book_club, status: :created, location: @book_club }
      else
        format.html { render action: "new" }
        format.json { render json: @book_club.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /book_clubs/1
  # PUT /book_clubs/1.json
  def update
    @book_club = BookClub.find(params[:id])

    respond_to do |format|
      if @book_club.update_attributes(params[:book_club])
        format.html { redirect_to admin_book_club_path(@book_club), notice: 'Book club was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @book_club.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_clubs/1
  # DELETE /book_clubs/1.json
  def destroy
    @book_club = BookClub.find(params[:id])
    @book_club.destroy

    respond_to do |format|
      format.html { redirect_to admin_book_clubs_url }
      format.json { head :ok }
    end
  end
end
