class ShopGenre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '日本料理' },
    { id: 3, name: '寿司' },
    { id: 4, name: '海鮮料理' },
    { id: 5, name: '天ぷら・揚げ物' },
    { id: 6, name: '蕎麦・うどん' },
    { id: 7, name: 'うなぎ' },
    { id: 8, name: '焼き鳥・串焼き' },
    { id: 9, name: 'しゃぶしゃぶ' },
    { id: 10, name: '鍋料理' },
    { id: 11, name: 'お好み焼き'},
    { id: 12, name: 'たこ焼き' },
    { id: 13, name: '郷土料理' },
    { id: 14, name: '丼ぶり物' },
    { id: 15, name: '和食' },
    { id: 16, name: 'ステーキ・ハンバーグ' },
    { id: 17, name: '洋食' },
    { id: 18, name: 'フレンチ' },
    { id: 19, name: 'イタリアン' },
    { id: 20, name: 'その他西洋料理' },
    { id: 21, name: '中華料理' },
    { id: 22, name: '韓国料理' },
    { id: 23, name: 'エスニック'},
    { id: 24, name: 'カレー' },
    { id: 25, name: '焼肉' },
    { id: 26, name: 'パン' },
    { id: 27, name: 'カフェ' },
    { id: 28, name: '居酒屋' },
    { id: 29, name: 'ラーメン' },

   
  ]
  include ActiveHash::Associations
  has_many :shops

end

