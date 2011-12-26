class ProductsController < ApplicationController

  def index
    @title = " - prodotti"
    @home_class = "first"
    @prodotti_class = "current_page_item"
    @breadcrumbs = "home > prodotti"
  end

  def show_atmedia_infoguard
    @title = " - crittografia layer2"    
    @home_class = "first"
    @prodotti_class = "current_page_item"
    @breadcrumbs = "home > prodotti > crittografia layer2"
  end

  def show_chameleon
    @title = " - legacy tape emulator"    
    @home_class = "first"
    @prodotti_class = "current_page_item"
    @breadcrumbs = "home > prodotti > legacy tape emulator"
  end

  def show_hopf
    @title = " - master clock"    
    @home_class = "first"
    @prodotti_class = "current_page_item"
    @breadcrumbs = "home > prodotti > master clock"
  end

  def show_ifs9000
    @title = " - cablaggio intelligente"    
    @home_class = "first"
    @prodotti_class = "current_page_item"
    @breadcrumbs = "home > prodotti > cablaggio intelligente"
  end

  def show_shunra
    @title = " - simulatore di rete geografica"    
    @home_class = "first"
    @prodotti_class = "current_page_item"
    @breadcrumbs = "home > prodotti > simulatore rete geografica"
  end

  def show_visara
    @title = " - FEP emulator"    
    @home_class = "first"
    @prodotti_class = "current_page_item"
    @breadcrumbs = "home > prodotti > FEP emulator"
  end

end
