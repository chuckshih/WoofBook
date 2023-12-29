class KamigoController < ApplicationController
 protect_from_forgery with: :null_session

  #0 
  def eat
    render plain: "要吃土了啦"
  end

  #1 觀察request.headers
  def request_headers
    render plain: request.headers.to_h.reject { |key, value|
      key.include? '.'
    }.map { |key, value| 
      "#{key}: #{value.class.to_s}" 
    }.sort.join("\n")
  end

  #2 觀察request.body
  def request_body
    render plain: request.body
  end

  #3 觀察response.headers
  def response_headers
    response.headers['7788'] = 'G8'
    render plain: response.headers.to_h.map { |key, value|
      "#{key}: #{value}" 
    }.sort.join("\n")
  end

  #4 觀察response.body
  def show_response_body
    puts "老媽我在這兒～～"
    render plain: response.body
  end

  #5 從Postman認識HTTP協定
  def webhook
    render plain: params.to_json
    text_param = params['message']['text']
    head :ok
  end

  #6 用Rails發HTTP Request(爬蟲)
def sent_request
  uri = URI('http://localhost:3000/kamigo/response_body')

  begin
    response = Net::HTTP.get(uri)

    if response.code == '200'
      render plain: response.body
    else
      render plain: "Error: Unexpected response code #{response.code}"
    end
  rescue StandardError => e
    render plain: "Error: #{e.message}"
  end
end

  #to_? 表示轉換對象的表示形式
  #to_h 轉換為哈希表(Hash)
  #to_s 轉換為字串表示形式
  #其它： to_i（轉換為整數）、to_f（轉換為浮點數）、to_a（轉換為陣列）

  #各種動詞
  #.map 把後面的集合列出來，然後返回對這個集合操作的結果
  #[1, 2, 3].map { |x| x * 2 } ======> [2, 4, 6]
  #集合內的元素通通乘以2

  #.sort 把後面的集合排序
  #[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5].sort ======> [1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]

  #.reject 排除某個條件的集合
  #[1, 2, 3, 4, 5].reject { |x| x.even? } ======> [1, 3, 5]
  #排除了偶數

  #.join 連接字串
  #將陣列的元素連接成一個字串，後面可以指定連接的分隔符號
  #["apple", "banana", "orange"].join(", ") ======> "apple, banana, orange"
  #若指定"\n"為分隔符號則會換行

  #.include 檢查後面陣列是否包含指定元素
  # 在陣列中檢查元素是否存在
  # arr = [1, 2, 3, 4, 5]
  # puts arr.include?(3)  # true
  # puts arr.include?(6)  # false

  # 在字串中檢查子字串是否存在
  # str = "Hello, World!"
  # puts str.include?("Hello")  # true
  # puts str.include?("Ruby")   # false

  #各種括弧和符號的使用
  # () 通常用於方法的參數，表達式的優先級，以及方法調用時的參數
  # {} 用於塊（block），Hash 表的表示，以及在字符串中插入變數
  # '' 用於定義字串，字串內部可以包含表達式 #{...}，這樣的表達式會被計算並替換為其值
  # [] 用於創建、訪問和修改「數組」
  # || 用於區塊（block）的參數，以及在一些邏輯運算中的「或」
  # ?  用於標示方法後面返回的是布林值（true 或 false）
end