class SolutionsController < ApplicationController

  def show_encryption
    @title = " - crittografia" 
    @home_class = "first"
    @prodotti_class = "current_page_item"
    @breadcrumbs = "home > soluzioni > crittografia"
  end

  def show_infrastruttura
    @title = " - infrastruttura"    
    @home_class = "first"
    @prodotti_class = "current_page_item"
    @breadcrumbs = "home > soluzioni > infrastruttura"
  end

  def show_main_open
    @title = " - mainframe ed open system"    
    @home_class = "first"
    @prodotti_class = "current_page_item"
    @breadcrumbs = "home > soluzioni > mainframe ed open system"
  end

  def show_rete_locale_geo
    @title = " - rete locale e geografica (LAN e WAN)"    
    @home_class = "first"
    @prodotti_class = "current_page_item"
    @breadcrumbs = "home > soluzioni > LAN e WAN"
  end

end
