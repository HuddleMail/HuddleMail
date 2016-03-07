class DisGroupsController < ApplicationController
require 'openpgp'
require 'rubygems'

  before_action :set_dis_group, only: [:show, :edit, :update, :destroy]

  # GET /dis_groups
  # GET /dis_groups.json
  def index
    @dis_groups = DisGroup.all
  end

  # GET /dis_groups/1
  # GET /dis_groups/1.json
  def show
  end

  # GET /dis_groups/new
  def new
    @dis_group = DisGroup.new
  end

  # GET /dis_groups/1/edit
  def edit
  end

  # POST /dis_groups
  # POST /dis_groups.json
  def create
    @dis_group = DisGroup.new(dis_group_params)
	@dname = @dis_group.disname

    respond_to do |format|
      if @dis_group.save
	make_keypair
	# make_file
	
	
        format.html { redirect_to @dis_group, notice: 'Dis group was successfully created.' }
        format.json { render :@dis_group, status: :created, location: @dis_group }
      else
        format.html { render :new }
        format.json { render json: @dis_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_groups/1
  # PATCH/PUT /dis_groups/1.json
  def update
    respond_to do |format|
      if @dis_group.update(dis_group_params)
        format.html { redirect_to @dis_group, notice: 'Dis group was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_group }
      else
        format.html { render :edit }
        format.json { render json: @dis_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_groups/1
  # DELETE /dis_groups/1.json
  def destroy
    @dis_group.destroy
    respond_to do |format|
      format.html { redirect_to dis_groups_url, notice: 'Dis group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_group
      @dis_group = DisGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_group_params
      params.require(:dis_group).permit(:disname)
    end

	# Function to call openpgp to make a key-pair
	def make_keypair
	  gpg = OpenPGP::Engine::GnuPG.new(:homedir => '~/.gnupg')
	  key_id = gpg.gen_key({
		  :key_type      => 'DSA',
		  :key_length    => 1024,
		  :subkey_type   => 'ELG-E',
		  :subkey_length => 1024,
		  :name          => @dname,
		  :comment       => nil,
		  #:email         => '',
		  #:passphrase    => '',
		})
	end

	# Funtion to save params to file
	def make_file
		$filename = params.find(:disname)
		`rm #$filename`
	end

end
