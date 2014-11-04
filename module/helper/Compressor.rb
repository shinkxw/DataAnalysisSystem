#!/usr/bin/env ruby -w
# encoding: GBK
#压缩器
class Compressor
  @@mask = 0x8765fed1
  @@max_bits = ('1' + '0' * 15).to_i
  #压缩数组
  def self.arr_com(arr)
    arr.inject(arr.size) {|r, n| r + cal_hash(n)} % @@max_bits
  end
  #将输入转换为数字
  def self.cal_hash(enter)
    return 0 unless enter
    case enter.class.to_s
    when 'String'
      n = 0
      enter.each_byte {|b| n += b;n += (n << 10);n ^= (n >> 6)}
      n += (n << 3);n ^= (n >> 11);n += (n << 15)
      n & @@mask
    when 'Fixnum','Bignum';enter
    else;puts "Compressor: #{enter.class}类型无法进行转换"
    end
  end
end