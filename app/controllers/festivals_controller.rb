class FestivalsController < ApplicationController
  def index
    @festivals = []
    @festivals << FestivalBase.new(name: 'Sziget festival', imgSrc: 'https://kep.cdn.index.hu/1/0/2890/28908/289084/28908499_2217455_277367d9f074a907c4266092b93a9c23_wm.jpg', startDate: Time.new(2020, 8, 12), endDate: Time.new(2020, 8, 19))
    @festivals << FestivalBase.new(name: 'Strand festival', imgSrc: 'https://vjm.hu/wp-content/uploads/2018/08/bestof_5.jpg', startDate: Time.new(2020, 6, 2), endDate: Time.new(2020, 6, 7))
    @festivals << FestivalBase.new(name: 'Volt festival', imgSrc: 'https://nepszava.hu/i/16/9/1/1238039.jpg', startDate: Time.new(2020, 7, 2), endDate: Time.new(2020, 7, 6))
    @festivals << FestivalBase.new(name: 'Balaton Sound festival', imgSrc: 'https://contextus.hu/wp-content/uploads/2019/06/balaton-sound-volt-fesztiv%C3%A1l-k%C3%A1d%C3%A1r-tam%C3%A1s-sziget-vezet%C5%91je.jpg', startDate: Time.new(2020, 7, 8), endDate: Time.new(2020, 7, 13))
  end
end
