class ReservationsController < ApplicationController
  # GET /reservations
  # GET /reservations.json
  def index
    @reservations = Reservation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reservations }
    end
  end

  # GET /reservations/listing
  # GET /reservations.json
  def listing
    @session_reservation = current_reservation
    @reservations = Reservation.all
     @book_clubs = BookClub.all
    @before = "http://www.syndetics.com/index.aspx?isbn="
    @after= "/SC.GIF&client=847-985-4000&type=xw12&upc=&oclc=&"
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reservations }
    end
  end

# GET /reservations/blank
  def blank
    @session_reservation = current_reservation
    
  end

# GET /reservations/1/select_book_club
  def select_book_club
       @session_reservation = current_reservation
       @reservation = Reservation.find(params[:id])

  
     @reservation.update_attributes(:book_club_id => params[:book_club_id])
     redirect_to listing_reservations_path
      
       
  end

  # GET /reservations/1
  # GET /reservations/1.json
  def show
    @reservation = Reservation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reservation }
    end
  end

  # GET /reservations/new
  # GET /reservations/new.json
  def new
    @reservation = Reservation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reservation }
    end
  end

  # GET /reservations/1/edit
  def edit
    @reservation = Reservation.find(params[:id])
  end

  # POST /reservations
  # POST /reservations.json
  def create
    @reservation = Reservation.new(params[:reservation])

    respond_to do |format|
      if @reservation.save
        format.html { redirect_to @reservation, notice: 'Reservation was successfully created.' }
        format.json { render json: @reservation, status: :created, location: @reservation }
      else
        format.html { render action: "new" }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reservations/1
  # PUT /reservations/1.json
  def update
    @reservation = Reservation.find(params[:id])

    respond_to do |format|
      if @reservation.update_attributes(params[:reservation])
        format.html { redirect_to @reservation, notice: 'Reservation was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservations/1
  # DELETE /reservations/1.json
  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy

    respond_to do |format|
      format.html { redirect_to reservations_url }
      format.json { head :ok }
    end
  end
  
    
   def cal 
     @session_reservation = current_reservation
     @reservations = Reservation.all
     @book_clubs = BookClub.all
     require 'date'
     @offset_before = 6
     @offset_after = 4
     @today = Date.today
     @first_of_year = Date.new(@today.year,1,1)
     @start_of_cal = @first_of_year.months_ago(@offset_before)
     @end_of_year = Date.new(@today.year,12,1).end_of_month()
     @end_of_cal = @end_of_year.months_since(@offset_after)
      
     @hash_date = Hash.new{|h,k| h[k]={}}
      (@start_of_cal..@end_of_cal).each do |da_day|
          
        
       @hash_date[da_day.to_s][:patron]  = "A Patron " + da_day.to_s
       @hash_date[da_day.to_s][:one] = da_day.weeks_ago(6).to_s 
  
      end
     @six_weeks_ago = @today
     
  end
  
  
end

