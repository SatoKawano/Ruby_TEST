def file_write(post)
  File.open("data.txt", "a") do |file|
    file.puts(post) # 2. ファイルへ書き込む
  end
end

def file_read
  puts "これまでの結果"
  File.open("data.txt", "r") do |file|
    file.each_line do |line|
      puts line
    end
  end
end

def point_check

  while true
    puts "1から5で評価を入力してください。"
    point = gets.to_i

    if point <= 0 || point > 5
        puts "数字を入力してください"
        next
    else
      puts "コメントを入力してください。"
      comment = gets
      post = "ポイント：#{point}　コメント：#{comment}"
      file_write(post)
      break
    end
  end

end

def board_start
  while true
    puts "実施したい処理を選択してください"
    puts "1:評価ポイントとコメントを入力する"
    puts "2:今までの結果を確認する"
    puts "3:終了する"
    num = gets.to_i
    case num
    when 1
      point_check
    when 2
      file_read
    when 3
      puts "終了します"
      break
    else
      # 1~3以外が入力されたときの処理
      puts "1から3で入力してください"
      next
    end
  end
end

board_start