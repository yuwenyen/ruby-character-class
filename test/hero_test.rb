# テストフレームワーク minitest を利用する
require 'minitest/autorun'

# テスト結果の見た目を派手にする
require 'minitest/reporters'
Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

# テスト対象のRubyソースコードを読み込む
require_relative '../lib/hero.rb'

# テストを実行するためのクラス
class HeroTest < Minitest::Test
  # Heroクラスのインスタンスが生成(new)できることを確認する
  def test_hero
    assert Hero.new
  end
end
