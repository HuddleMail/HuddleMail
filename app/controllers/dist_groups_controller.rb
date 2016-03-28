class DistGroupsController < ApplicationController
  before_action :set_dist_group, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  require 'openpgp'

  #before_action :set_dist_group, only: [:show, :edit, :update, :destroy] 

  # GET /dist_groups
  # GET /dist_groups.json
  def index
    @dist_groups = DistGroup.all
  end

  # GET /dist_groups/1
  # GET /dist_groups/1.json
  def show
    @dname = @dist_group.dist_name    
    @dpubkey = get_pubkey
  end

  # GET /dist_groups/new
  def new
    @dist_group = DistGroup.new
  end

  # GET /dist_groups/1/edit
  def edit
  end

  # POST /dist_groups
  # POST /dist_groups.json
  def create
    @dist_group = DistGroup.new(dist_group_params)
	@dname = @dist_group.dist_name

    respond_to do |format|
      if @dist_group.save
	make_keypair	
	
        format.html { redirect_to @dist_group, notice: 'dist group was successfully created.' }
        format.json { render :@dist_group, status: :created, location: @dist_group }
      else
        format.html { render :new }
        format.json { render json: @dist_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dist_groups/1
  # PATCH/PUT /dist_groups/1.json
  def update
    respond_to do |format|
      if @dist_group.update(dist_group_params)
        format.html { redirect_to @dist_group, notice: 'dist group was successfully updated. #{@dpubkey}' }
        format.json { render :show, status: :ok, location: @dist_group }
      else
        format.html { render :edit }
        format.json { render json: @dist_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dist_groups/1
  # DELETE /dist_groups/1.json
  def destroy
    @dist_group.destroy
    respond_to do |format|
      format.html { redirect_to dist_groups_url, notice: 'dist group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dist_group
      @dist_group = DistGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dist_group_params
      params.require(:dist_group).permit(:dist_name)
    end

	# Function to call openpgp to make a key-pair
	def make_keypair
	  gpg = OpenPGP::Engine::GnuPG.new(:homedir => '~/.gnupg')
	  key_id = gpg.gen_key({
		  :key_type      => 'RSA',
		  :key_length    => 4096,
		  :subkey_type   => 'RSA',
		  :subkey_length => 4096,
		  :name          => @dname,
		  :comment       => nil,
		  #:email         => '',
		  #:passphrase    => '',
		})
	end
	
	# Function to get public key from keyring
	private
	def get_pubkey
	  `gpg --export -a "#{@dname}"`
	end

end
