# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

class Array
  def choice
    at( rand( size ) )
  end
end

names = %w(俊隆 愼太郎 久隆 知史 正寛 伸弥 康昭 尚寛 利彰 慶介 裕輔 博昭 智昭 貴教 善春 槙之介 航介 敦広 裕介 裕一 健太郎 慶一 貴昭 悠介 康介 英治 洋介 範文 裕二 慶史 俊治 陽介 和也 慶一郎 航 義昭 忠昭 知典 健二 圭介 知範 明博 輝裕 正輝 和樹 浩文 彰久 隆伸 佑介 亮治 健介 文昭 勇二 啓輔 慶弘 敏仁 大輔 敦史 佑季 啓介 秀実 亮介 悠一 俊輔 隆範 健 弘範 隆二 政宏 智寛 秀範 智範 航平 恭輔 浩司 亮太郎 慶二 慶久 謙一郎 敬輔 慶紀 亮一 浩一郎 慶輔 一寛 健司 亮 栄次郎 文彰 智広 佑樹 靖弘 慶二郎 真一郎 宏保 誠仁 慎司 慶也 大之 優二)
names.each do |name|
  User.create( { name: name })
end
