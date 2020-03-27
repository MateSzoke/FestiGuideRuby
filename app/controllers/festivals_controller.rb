class FestivalsController < ApplicationController
  def index
    @festivals = []
    @festivals << FestivalBase.new(name: 'Sziget festival', imgSrc: 'https://kep.cdn.index.hu/1/0/2890/28908/289084/28908499_2217455_277367d9f074a907c4266092b93a9c23_wm.jpg', startDate: '2020. augusztus 5.', endDate: '2020. augusztus 11.')
    @festivals << FestivalBase.new(name: 'Strand festival', imgSrc: 'https://vjm.hu/wp-content/uploads/2018/08/bestof_5.jpg', startDate: '2020. augusztus 19.', endDate: '2020. augusztus 23.')
    @festivals << FestivalBase.new(name: 'Volt festival', imgSrc: 'https://nepszava.hu/i/16/9/1/1238039.jpg', startDate: '2020. julius 1.', endDate: '2020. julius 5.')
    @festivals << FestivalBase.new(name: 'Balaton Sound festival', imgSrc: 'https://contextus.hu/wp-content/uploads/2019/06/balaton-sound-volt-fesztiv%C3%A1l-k%C3%A1d%C3%A1r-tam%C3%A1s-sziget-vezet%C5%91je.jpg', startDate: '2020. julius 8.', endDate: '2020. julius 12.')
  end
end
