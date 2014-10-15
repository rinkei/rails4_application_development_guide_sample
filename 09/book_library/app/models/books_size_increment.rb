# -*- coding: utf-8 -*-
class BooksSizeIncrement
  def initialize()
  end

  # 対象のモデルオブジェクトが引数として渡されます
  def after_create(record)
    # 所有者の書籍所持数をインクリメント

    record.user.increment!(:books_size)
  end
end
