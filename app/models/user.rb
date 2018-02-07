class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # 用户点击选择股票上市年限按钮 time_range的时间范围
   TIME_RANGE = ["all_years", "three_years", "five_years"]
   validates_inclusion_of :time_range, :in => TIME_RANGE
   
end
