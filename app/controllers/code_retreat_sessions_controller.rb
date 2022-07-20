class CodeRetreatSessionsController < ApplicationController
  before_action :set_code_retreat_session, only: %i[ show edit update destroy ]

  # GET /code_retreat_sessions or /code_retreat_sessions.json
  def index
    @code_retreat_sessions = CodeRetreatSession.all
  end

  # GET /code_retreat_sessions/1 or /code_retreat_sessions/1.json
  def show
  end

  # GET /code_retreat_sessions/new
  def new
    @code_retreat_session = CodeRetreatSession.new
  end

  # GET /code_retreat_sessions/1/edit
  def edit
  end

  # POST /code_retreat_sessions or /code_retreat_sessions.json
  def create
    @code_retreat_session = CodeRetreatSession.new(code_retreat_session_params)

    respond_to do |format|
      if @code_retreat_session.save
        format.html { redirect_to code_retreat_session_url(@code_retreat_session), notice: "Code retreat session was successfully created." }
        format.json { render :show, status: :created, location: @code_retreat_session }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @code_retreat_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_retreat_sessions/1 or /code_retreat_sessions/1.json
  def update
    respond_to do |format|
      if @code_retreat_session.update(code_retreat_session_params)
        format.html { redirect_to code_retreat_session_url(@code_retreat_session), notice: "Code retreat session was successfully updated." }
        format.json { render :show, status: :ok, location: @code_retreat_session }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @code_retreat_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_retreat_sessions/1 or /code_retreat_sessions/1.json
  def destroy
    @code_retreat_session.destroy

    respond_to do |format|
      format.html { redirect_to code_retreat_sessions_url, notice: "Code retreat session was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_retreat_session
      @code_retreat_session = CodeRetreatSession.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def code_retreat_session_params
      params.require(:code_retreat_session).permit(:performed_on, :title, :description)
    end
end
