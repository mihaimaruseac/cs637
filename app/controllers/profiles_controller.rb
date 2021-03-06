class ProfilesController < ApplicationController
  # GET /profiles
  # GET /profiles.json
  def index
    render status: :forbidden,
           text: "<strong>Requested Page Not Found or Forbidden</strong>".html_safe
    #@profiles = Profile.all

    #respond_to do |format|
    #  format.html # index.html.erb
    #  format.json { render json: @profiles }
    #end
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    @profile = Profile.find(params[:id])
    @roles = @profile.user.roles.where(active:true).map { |r| r.role }

    @is_instructor = @roles.include? "instructor"
    @is_parent = @roles.include? "parent"
    @is_child = @roles.include? "child"

    if @is_instructor
      @courses = @profile.instructor.course
    end

    if @is_parent
      @children = @profile.parent.child
    end

    if @is_child
      @child_courses = @profile.child.courses
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @profile }
    end
  end

  # GET /profiles/new
  # GET /profiles/new.json
  def new
    @profile = Profile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @profile }
    end
  end

  # GET /profiles/1/edit
  def edit
    @profile = Profile.find(params[:id])
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(params[:profile])

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render json: @profile, status: :created, location: @profile }
      else
        format.html { render action: "new" }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /profiles/1
  # PUT /profiles/1.json
  def update
    @profile = Profile.find(params[:id])

    respond_to do |format|
      if @profile.update_attributes(params[:profile])
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy

    respond_to do |format|
      format.html { redirect_to profiles_url }
      format.json { head :no_content }
    end
  end
end
