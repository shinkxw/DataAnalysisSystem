#!/usr/bin/env ruby -w
# encoding: GBK
par_arr = %w(ID	���� ���� �Ա� �������� ְ�� ֤����	���� ������ò ���֤���� 
            �μӹ���ʱ�� ���뱾��λʱ�� ���ѧ�� ѧλ ��ҵѧУ ��ѧרҵ 
            ���ν�ѧ�� ��ʦ�ʸ����� �Ƿ��ʦ רҵ�����ʸ� ְ���� ְҵ�ʸ� 
            �Ѳ�����ҵʱ�� �μӹ���ʱ�� ְҵ�ʸ�֤���� ��λ���� ���� ϵ�� 
            �칫�� ������ ѧ��֤����Ƭ ѧλ֤����Ƭ)
J�������� = Struct.new('J��������', *par_arr)
$sid = '1'
$xb_hash = Hash[*%w(�� 1 Ů 2)]
$mz_hash = Hash[*%w(���� 01 �ɹ��� 02 ������ 15 ��� 22 ���� 03 ���� 11)]
$zzmm_hash = Hash[*%w(Ⱥ�� 13 �й���������Ա 01 �й�����������������Ա 03 �й�����ͬ����Ա 05 �й�������Ԥ����Ա 02 ���� 12)]
class Qypz
  def self.img(str)
    if (str != nil && str != "" && str != '��')
      return '/ZZZZ_RSXT/HrSchoolFiles/jxjsjgxx/' + str
    else
      return ''
    end
  end
  def self.gzjy(�Ѳ�����ҵʱ��, �μӹ���ʱ��)
    str = ''
    str << "�Ѳ�����ҵʱ��: #{�Ѳ�����ҵʱ��}   " if (�Ѳ�����ҵʱ�� != '' && �Ѳ�����ҵʱ�� != '��')
    str << "�μӹ���ʱ��: #{�μӹ���ʱ��}" if (�μӹ���ʱ�� != '' && �μӹ���ʱ�� != '��')
    return str.strip
  end
  def self.yxzy(��ҵѧУ, ��ѧרҵ)
    if (��ҵѧУ != '' && ��ѧרҵ != '')
      return "#{��ҵѧУ}-#{��ѧרҵ}"
    elsif (��ҵѧУ != '' || ��ѧרҵ != '')
      return ��ҵѧУ + ��ѧרҵ
    else
      return ''
    end
  end
end
$jb_config = { ID:               proc{|d| d.ID.to_i},#���
               SCHOOLID:         proc{|d| $sid},#ѧУID
               GH:               proc{|d| d.ID.to_i},#����
               XM:               proc{|d| d.����},#����
               YWXM:             proc{|d| ''},#Ӣ������
               XMPY:             proc{|d| ''},#����ƴ��
               CYM:              proc{|d| ''},#������
               SFZJLXM:          proc{|d| '1'},#���֤��������
               SFZJH:            proc{|d| d.���֤����},#���֤����
               CSRQ:             proc{|d, c| c.time_to_8(d.��������)},#��������
               XBM:              proc{|d| $xb_hash[d.�Ա�]},#�Ա���
               MZM:              proc{|d| $mz_hash[d.����]},#������
               XXM:              proc{|d| ''},#Ѫ����
               JKZKM:            proc{|d| ''},#����״����
               HYZTM:            proc{|d| ''},#����״̬��
               ZZMMM:            proc{|d| $zzmm_hash[d.������ò]},#������ò��
               GATQWM:           proc{|d| ''},#�۰�̨������
               JG:               proc{|d| ''},#����
               GJDQM:            proc{|d| '156'},#����/������
               CSDXZQHM:         proc{|d| ''},#����������������
               XYZJM:            proc{|d| ''},#�����ڽ���
               JZGHKSZDXZQHM:    proc{|d| ''},#��ְ���������ڵ�����������
               HKLBM:            proc{|d| ''},#���������
               DQZZ:             proc{|d| ''},#��ǰסַ
               DQZZYZBM:         proc{|d| ''},#��ǰסַ��������
               CJGZNY:           proc{|d, c| c.time_to_6(d.�μӹ���ʱ��)},#�μӹ�������
               CJNY:             proc{|d| ''},#�ӽ�����
               LXNY:             proc{|d, c| c.time_to_6(d.���뱾��λʱ��)},#��У����
               BZLBM:            proc{|d| d.�Ƿ��ʦ == '��ʦ' ? '10' : '99'},#���������
               JZGLBM:           proc{|d| ''},#��ְ�������
               GWLBM:            proc{|d| ''},#��λ�����
               SFJZJS:           proc{|d| ''},#�Ƿ��ְ��ʦ
               SFSSXJS:          proc{|d| ''},#�Ƿ�˫ʦ�ͽ�ʦ
               ZP:               proc{|d| Qypz.img(d.֤����)},#��Ƭ(·��)
               DQZTM:            proc{|d| '11'},#��ǰ״̬��
               YDDH:             proc{|d| ''},#�ƶ��绰
               GDDH:             proc{|d| ''},#�̶��绰
               TXDZYZBM:         proc{|d| ''},#ͨ�ŵ�ַ��������
               TXDZ:             proc{|d| ''},#ͨ�ŵ�ַ
               DZXX:             proc{|d| ''},#��������
               WLDZ:             proc{|d| ''},#�����ַ
               JSTXH:            proc{|d| ''},#��ʱͨѶ��
               JSKQJS:           proc{|d| '��ʦ'},#��ʦ���ڽ�ɫ
               }
$kz_config = { JZGJBSJID:        proc{|d| d.ID.to_i},#�̹�������ϢID
               SCHOOLID:         proc{|d| $sid},#ѧУID
               JL:               proc{|d| ''},#����
               GL:               proc{|d| ''},#����
               GZJY:             proc{|d| Qypz.gzjy(d.�Ѳ�����ҵʱ��, d.�μӹ���ʱ��)},#��������
               LDJN:             proc{|d| ''},#�Ͷ�����
               XXJL:             proc{|d| ''},#ѧϰ����
               WJGLSJ:           proc{|d| ''},#δ�ǹ���ʱ��
               RDSJ:             proc{|d| ''},#�뵳���ţ�ʱ��
               JRBDWSJ:          proc{|d| ''},#���뱾��λʱ��
               XZZW:             proc{|d| ''},#����ְ��
               ZYJSZG:           proc{|d| d.רҵ�����ʸ�},#רҵ�����ʸ�
               ZYJSZGHDSJ:       proc{|d| ''},#רҵ�����ʸ�ȡ��ʱ��
               XL:               proc{|d| d.���ѧ��},#ѧ��
               BYYXXJZY:         proc{|d| Qypz.yxzy(d.��ҵѧУ, d.��ѧרҵ)},#��ҵԺУϵ��רҵ
               BYSJ:             proc{|d| ''},#��ҵʱ��
               XW:               proc{|d| d.ѧλ},#ѧλ
               ZZJYXL:           proc{|d| ''},#��ְ����ѧ��
               ZZJYBYYXXJZY:      proc{|d| ''},#��ְ������ҵԺУϵ��רҵ
               ZZJYXW:           proc{|d| ''},#��ְ����ѧλ
               ZZJYBYSJ:         proc{|d| ''},#��ְ������ҵʱ��
               PTHDJ:            proc{|d| ''},#��ͨ���ȼ�
               JSZGZZL:          proc{|d| d.��ʦ�ʸ�����},#��ʦ�ʸ�֤����
               XPYGW:            proc{|d| ''},#��Ƹ�ø�λ
               GWDJ:             proc{|d| d.��λ����},#��λ�ȼ�
               ZWCC:             proc{|d| d.ְ����},#ְ����
               KS:               proc{|d| d.����},#����
               XB:               proc{|d| d.ϵ��},#ϵ��
               BGS:              proc{|d| d.�칫��},#�칫��
               JYZ:              proc{|d| d.������},#������
               XRJXK:            proc{|d| d.���ν�ѧ��},#���ν�ѧ��
               }
$nlzs_config = { JZGJBSJID:        proc{|d| d.ID.to_i},#�̹�������ϢID
                 SCHOOLID:         proc{|d| $sid},#ѧУID
                 BYZS:             proc{|d| ''},#��ҵ֤��
                 XWZS:             proc{|d| Qypz.img(d.ѧλ֤����Ƭ)},#ѧλ֤��
                 ZCZS:             proc{|d| ''},#ְ��֤��
                 PTHZS:            proc{|d| ''},#��ͨ��֤��
                 JSZGZ:            proc{|d| ''},#��ʦ�ʸ�֤
                 JSJHGZ:           proc{|d| ''},#������ϸ�֤
                 JNZS:             proc{|d| ''},#����֤��
                 ZGXL:             proc{|d| Qypz.img(d.ѧ��֤����Ƭ)},#���ѧ��
                 }
$zynl_config = { SCHOOLID:         proc{|d| $sid},#ѧУID
                 JZGJBSJID:        proc{|d| d.ID.to_i},#�̹�������ϢID
                 ZSMC:             proc{|d| d.ְҵ�ʸ� != '��' ? d.ְҵ�ʸ�[0, 40] : ''},#֤������
                 ZSBH:             proc{|d| ''},#֤����
                 ZSBFDW:           proc{|d| ''},#֤��䷢��λ
                 ZSBFRQ:           proc{|d| ''},#֤��䷢����
                 ZSBZ:             proc{|d| Qypz.img(d.ְҵ�ʸ�֤����)},#֤�鱸ע
                 SFSZYZGZS:        proc{|d| '3'},#�Ƿ���ְҵ�ʸ�֤��
                 JJ:               proc{|d| ''},#���
                 ZSDJID:           proc{|d| ''},#֤��ȼ�ID
                 }

#~ load "����Ǩ������\\���˼�ʦ��������Ǩ��.rb"
#~ path = 'E:\������Ŀ\���˼�ʦ\��ʦ����.xls'
#~ sheet_data = ExcelLoader.get_sheet_data(path, 'teacher')
#~ sheet_data.shift
#~ sj_arr = sheet_data.map{|data| J��������.new(*data)}
#~ #���ݼ���ʽ��
#~ #[:�Ա�, :����, :������ò].each{|xm| p sj_arr.map(&xm).uniq}
#~ #����ת��
#~ out_hash_arr = DataMigrate.convert_data(sj_arr, $jb_config)
#~ DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_ZZJG_01_01_JZGJBSJ')

#~ out_hash_arr = DataMigrate.convert_data(sj_arr, $kz_config)
#~ DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_ZZJG_01_A01_JZGKZ')

#~ out_hash_arr = DataMigrate.convert_data(sj_arr, $nlzs_config)
#~ DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_ZZJG_01_A02_JZGNLZS')

#~ out_hash_arr = DataMigrate.convert_data(sj_arr, $zynl_config)
#~ out_hash_arr = out_hash_arr.delete_if {|hash| hash[:ZSMC] == '' && hash[:ZSBZ] == ''}
#~ DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_ZZJG_07_01_JZGZYNL')