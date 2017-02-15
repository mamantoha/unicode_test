require 'test_helper'

class UnicodeTest < Minitest::Test
end

describe UnicodeTest do
  it '#%' do
    ("%s" % "noël").must_equal("noël")
  end

  it '#*' do
    ("noël" * 2).must_equal("noëlnoël")
  end

  it '#<<' do
    ("noël" << "ë").must_equal("noëlë")
  end

  it '#<=>' do
    ("ä" <=> "z").must_equal(-1)
  end

  it '#==' do
    ("ä" == "ä").must_equal(true)
  end

  it '#=~' do
    ("ä" =~ /a./).must_equal(nil)
  end

  it '#[]' do
    ("ä"[0]).must_equal("ä")
  end

  it '#[]=' do
    ("ä"[0] = "u").must_equal("u")
  end

  it '#b' do
    ("ä".b.encoding.to_s).must_equal("ASCII-8BIT")
  end

  it '#bytes' do
    ("ä".bytes).must_equal([97, 204, 136])
  end

  it '#bytesize' do
    ("ä".bytesize).must_equal(3)
  end

  it '#byteslice' do
    ("ä".byteslice(1)).must_equal("\xCC")
  end

  it '#capitalize' do
    ("ä".capitalize).must_equal("Ä")
  end

  it '#casecmp' do
    ("äa".casecmp("äz")).must_equal(-1)
  end

  it '#center' do
    ("ä".center(3)).must_equal(" ä ")
  end

  it '#chars' do
    ("ä".chars).must_equal(["ä"])
  end

  it '#chomp' do
    ("ä
  ".chomp).must_equal("ä")
  end

  it '#chop' do
    ("ä".chop).must_equal("")
  end

  it '#chr' do
    ("ä".chr).must_equal("ä")
  end

  it '#clear' do
    ("ä".clear).must_equal("")
  end

  it '#codepoints' do
    ("ä".codepoints).must_equal([97, 776])
  end

  it '#concat' do
    ("ä".concat("x")).must_equal("äx")
  end

  it '#count' do
    ("ä".count("a")).must_equal(0)
  end

  it '#delete' do
    ("ä".delete("a")).must_equal("ä")
  end

  it '#downcase' do
    ("Ä".downcase).must_equal("ä")
  end

  it '#dump' do
    ("ä".dump).must_equal("\"a\\u0308\"")
  end

  it '#each_byte' do
    ("ä".each_byte.to_a).must_equal([97, 204, 136])
  end

  it '#each_char' do
    ("ä".each_char.to_a).must_equal(["ä"])
  end

  it '#each_codepoint' do
    ("ä".each_codepoint.to_a).must_equal([97, 776])
  end

  it '#each_line' do
    ("ä".each_line.to_a).must_equal(["ä"])
  end

  it '#empty?' do
    ("ä".empty?).must_equal(false)
  end

  it '#encode' do
    ("ä".encode("ASCII", undef: :replace)).must_equal("a?")
  end

  it '#encoding' do
    ("ä".encoding.to_s).must_equal("UTF-8")
  end

  it '#end_with?' do
    ("ä".end_with?("ä")).must_equal(true)
  end

  it '#eql?' do
    ("ä".eql?("a")).must_equal(false)
  end

  it '#force_encoding' do
    ("ä".force_encoding("ASCII")).must_equal("a\xCC\x88")
  end

  it '#getbyte' do
    ("ä".getbyte(2)).must_equal(136)
  end

  it '#gsub' do
    ("ä".gsub("a", "x")).must_equal("ä")
  end

  it '#hash' do
    ("ä".hash == "a".hash).must_equal(false)
  end

  it '#include?' do
    ("ä".include?("a")).must_equal(false)
  end

  it '#index' do
    ("ä".index("a")).must_equal(nil)
  end

  it '#replace' do
    ("ä".replace("u")).must_equal("u")
  end

  it '#insert' do
    ("ä".insert(1, "u")).must_equal("äu")
  end

  it '#inspect' do
    ("ä".inspect).must_equal("\"ä\"")
  end

  it '#intern' do
    ("ä".intern).must_equal(:ä)
  end

  it '#length' do
    ("ä".length).must_equal(1)
  end

  it '#ljust' do
    ("ä".ljust(3, "_")).must_equal("ä__")
  end

  it '#lstrip' do
    ("  ä".lstrip).must_equal("ä")
  end

  it '#match' do
    ("ä".match("a")).must_equal(nil)
  end

  it '#next' do
    ("ä".next).must_equal("ä")
  end

  it '#ord' do
    ("ä".ord).must_equal(97)
  end

  it '#partition' do
    ("händ".partition("a")).must_equal(["händ"])
  end

  it '#prepend' do
    ("ä".prepend("ä")).must_equal("ää")
  end

  it '#replace' do
    ("ä".replace("ẍ")).must_equal("ẍ")
  end

  it '#reverse' do
    ("händ".reverse).must_equal("dnäh")
  end

  it '#rpartition' do
    ("händ".rpartition("a")).must_equal(["händ"])
  end

  it '#rstrip' do
    ("line ".rstrip).must_equal("line")
  end

  it '#scrub' do
    ("ä".scrub).must_equal("ä")
  end

  it '#setbyte' do
    (s = "ä"; s.setbyte(0, "x".ord); s).must_equal("ẍ")
  end

  it '#size' do
    ("ä".size).must_equal(1)
  end

  it '#slice' do
    ("ä".slice(0)).must_equal("ä")
  end

  it '#split' do
    ("ä".split("a")).must_equal(["ä"])
  end

  it '#squeeze' do
    ("ää".squeeze("ä")).must_equal("ä")
  end

  it '#start_with?' do
    ("ä".start_with?("a")).must_equal(false)
  end

  it '#strip' do
    (" line ".strip).must_equal("line")
  end

  it '#sub' do
    ("ä".sub("a", "x")).must_equal("ä")
  end

  it '#succ' do
    ("ä".succ).must_equal("b̈")
  end

  it '#swapcase' do
    ("ä".swapcase).must_equal("Ä")
  end

  it '#to_c' do
    ("١".to_c).must_equal((1+0i))
  end

  it '#to_f' do
    ("١".to_f).must_equal(1.0)
  end

  it '#to_i' do
    ("١".to_i).must_equal(1)
  end

  it '#to_r' do
    ("١".to_r).must_equal((1/1))
  end

  it '#to_sym' do
    ("ä".to_sym).must_equal(:ä)
  end

  it '#tr' do
    ("ä".tr("a", "b")).must_equal("ä")
  end

  it '#unpack' do
    ("ä".unpack("CCC")).must_equal([97, 204, 136])
  end

  it '#upto' do
    ("ä".upto("c̈").to_a).must_equal(["ä", "b̈", "c̈"])
  end

  it '#valid_encoding?' do
    ("ä".valid_encoding?).must_equal(true)
  end

end
