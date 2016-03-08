class DistGroupController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def show
    @dist_groups = DistGroup.all
  end

  def destroy
    @dist_group.destroy
  end

  # POST /dist_groups
  # POST /dist_groups.json
  def create
    @dist_group = DisGroup.new(dist_group_params)
    @dname = @dist_group.distname

    respond_to do |format|
      if @dist_group.save
        make_keypair
        # make_file


        format.html { redirect_to @dist_group, notice: 'Dis group was successfully created.' }
        format.json { render :@dist_group, status: :created, location: @dist_group }
      else
        format.html { render :new }
        format.json { render json: @dist_group.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_dist_group
    @dist_group = DistGroup.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def dist_group_params
    params.require(:dist_group).permit(:distname)
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
                             :comment       => nil
                         })
  end

  # Funtion to save params to file
  def make_file
    $filename = params.find(:distname)
    `rm #$filename`
  end
end
