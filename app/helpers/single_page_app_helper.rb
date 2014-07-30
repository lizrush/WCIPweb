module SinglePageAppHelper
  def single_page_app?
    params[:controller] == 'pages'
  end
end
