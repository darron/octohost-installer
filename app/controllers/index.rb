Installer::App.controllers :index do
  get :index, :map => "/" do
    render 'index/home'
  end

  get :index, :map => "/do" do
    render 'index/do'
  end

  post :index, :map => '/do/build' do
    token = params[:token]
    DigitaloceanWorker.perform_async(token)
    render 'index/do-build'
  end

end
