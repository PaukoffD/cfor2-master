module Forem
  class CategoriesController < Forem::ApplicationController
    helper 'forem/forums'
	
    load_and_authorize_resource :class => 'Forem::Category', :find_by => :slug
  end
end
