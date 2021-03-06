class DistGroupsController < ApplicationController
  before_action :set_dist_group, only: [:show, :destroy]
  before_action :authenticate_user!
   require 'openpgp'
   require 'gpgme'

  # GET /dist_groups
  # GET /dist_groups.json
  def index
    if user_signed_in?
      @dist_groups = DistGroup.all
      @current_id = current_user.id
      @user_groups = DistGroup.where(:user_id => @current_id)
    end
  end

	# GET /dist_groups/user_index
	def all
    if user_signed_in?
      @dist_groups = DistGroup.all
		  @current_id = current_user.id
      @user_groups = DistGroup.where(:user_id => @current_id)
    end
	end

  def show
    @dname = @dist_group.dist_name    
    @dpubkey = get_pubkey
  end

  # GET /dist_groups/new
  def new
    @dist_group = DistGroup.new
  end

  # POST /dist_groups
  # POST /dist_groups.json
  def create
    @dist_group = DistGroup.new(dist_group_params)
	  @dname = @dist_group.dist_name

    respond_to do |format|
      if @dist_group.save
	      make_keypair
	
        format.html { redirect_to @dist_group, notice: 'Distribution Group was successfully created.' }
        format.json { render :@dist_group, status: :created, location: @dist_group }
      else
        format.html { render :new }
        format.json { render json: @dist_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dist_groups/1
  # DELETE /dist_groups/1.json
  def destroy
		@dname = @dist_group.dist_name
		delete_secret_key
    @dist_group = DistGroup.find(params[:id])
    @dist_group.destroy

    respond_to do |format|
      format.html { redirect_to dist_groups_url, notice: 'Distribution Group was successfully destroyed.' }
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
      params.require(:dist_group).permit(:dist_name, :user_id)
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

	# Fuction to delete secret key from keyring
	def delete_secret_key
		akey = GPGME::Key.find(:secret, @dname)
		akey.each do |akey|
		akey.delete!(allow_secret = true)
		end
	end
	
	# Function to get public key from keyring
	private
	def get_pubkey
	  `gpg --export -a "#{@dname}"`
	end

end
