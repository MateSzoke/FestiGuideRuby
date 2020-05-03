# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

festivals = FestivalBase.create([
                                    {name: 'Sziget festival', imgSrc: 'https://kep.cdn.index.hu/1/0/2890/28908/289084/28908499_2217455_277367d9f074a907c4266092b93a9c23_wm.jpg', startDate: Time.new(2020, 8, 12), endDate: Time.new(2020, 8, 19), stage: 'Nagy színpad'},
                                    {name: 'Strand festival', imgSrc: 'https://vjm.hu/wp-content/uploads/2018/08/bestof_5.jpg', startDate: Time.new(2020, 6, 2), endDate: Time.new(2020, 6, 7), stage: 'Nagy színpad'},
                                    {name: 'Volt festival', imgSrc: 'https://nepszava.hu/i/16/9/1/1238039.jpg', startDate: Time.new(2020, 7, 2), endDate: Time.new(2020, 7, 6), stage: 'Nagy színpad'},
                                    {name: 'Balaton Sound festival', imgSrc: 'https://contextus.hu/wp-content/uploads/2019/06/balaton-sound-volt-fesztiv%C3%A1l-k%C3%A1d%C3%A1r-tam%C3%A1s-sziget-vezet%C5%91je.jpg', startDate: Time.new(2020, 7, 8), endDate: Time.new(2020, 7, 13), stage: 'Nagy színpad'}
                                ])
festivals.each do |festival|
  festival.startDate.to_date.upto(festival.endDate.to_date).each do |date|
    day = Day.create(date: date.to_datetime, festival_base_id: festival.id)
    Show.create(day_id: day.id, performer: '30Y', time: '20:30', date: day.date)
  end
end