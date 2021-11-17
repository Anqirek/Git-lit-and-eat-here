class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  delete "/rating/:id" do
   rating = Review.find(params[:id])
   rating.destroy
   rating.to_json
  end

  patch "/rating/:id" do
    review = Review.find(params[:id])
    review.update(
      rating: params[:rating]
    )
    review.to_json
  end

  post "/rating" do
  
  end

  get "/restaurants" do

   "<h2>Hello World!</h2>"

  end
end
