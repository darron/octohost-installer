Installer::App.controllers :index do

  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  get :index, :map => "/" do
    render 'index/home'
  end

  get :index, :map => "/do" do
    render 'index/do'
  end

  post :index, :map => '/do/build' do
    @cmd = "cd #{ENV['COOKBOOK_DIR']} && DIGITALOCEAN_API_TOKEN=\"#{params[:token]}\" packer build -only=digitalocean template.json"
    render 'index/do-build'
  end

  # post :index, :map => "/do/build" do
  #   render 'index/do-build'
  # end

end
