# テストフレームワーク minitest を利用する
require 'minitest/autorun'

# テスト結果の見た目を派手にする
require 'minitest/reporters'
Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

# テスト対象のRubyソースコードを読み込む
require_relative '../lib/hero.rb'

# テストを実行するためのクラス
class HeroTest < Minitest::Test
  def setup 
    @hero = Hero.new('ヨシヒコ', 50)
  end

  def test_name
    assert_equal(@hero.name, 'ヨシヒコ')
  end

  def test_hp
    assert_equal(@hero.hp, 50)
  end

  def test_dead
    hero_hp1 = Hero.new('ヨシヒコ', 1)
    hero_hp0 = Hero.new('ヨシヒコ', 0)
    hero_hpminus = Hero.new('ヨシヒコ', -1)

    assert_equal(hero_hp1.dead?, false)
    assert_equal(hero_hp0.dead?, true)
    assert_equal(hero_hpminus.dead?, true)
  end
end
