namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_01_01_XSXX_metadata))]
    public partial class EDU_ZXXS_01_01_XSXX
    {
        public EDU_ZXXS_01_01_XSXX()
        {
            XH = "";
            XM = "";
            XBM = "";
            CSRQ = "";
            CSDM = "";
            GJDQM = "";
            ZZMMM = "";
            JKZKM = "";
            RXNY = "";
            NJ = "";
            BH = "";
            XSLBM = "";
            SFLDRK = "";
            XSDQZTM = "";
        }
        public class EDU_ZXXS_01_01_XSXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧ��")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XM { get; set; }


            [Display(Name = "Ӣ������")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YWXM { get; set; }


            [Display(Name = "����ƴ��")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XMPY { get; set; }


            [Display(Name = "������")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CYM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ա���")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XBM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CSRQ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CSDM { get; set; }


            [Display(Name = "����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JG { get; set; }


            [Display(Name = "������")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MZM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����/������")]
            [StringLength(3)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GJDQM { get; set; }


            [Display(Name = "���֤��������")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFZJLXM { get; set; }


            [Display(Name = "���֤����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFZJH { get; set; }


            [Display(Name = "����״����")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HYZKM { get; set; }


            [Display(Name = "�۰�̨������")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GATQWM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������ò��")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZZMMM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����״����")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JKZKM { get; set; }


            [Display(Name = "�����ڽ���")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XYZJM { get; set; }


            [Display(Name = "Ѫ����")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXM { get; set; }


            [Display(Name = "��Ƭ")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZP { get; set; }


            [Display(Name = "���֤����Ч��")]
            [StringLength(17)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFZJYXQ { get; set; }


            [Display(Name = "������Ů��־")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DSZYBZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѧ����")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RXNY { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�꼶")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧ�������")]
            [StringLength(5)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XSLBM { get; set; }


            [Display(Name = "��סַ")]
            [StringLength(180)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XZZ { get; set; }


            [Display(Name = "�������ڵ�")]
            [StringLength(180)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HKSZD { get; set; }


            [Display(Name = "����������")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HKXZM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ƿ������˿�")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFLDRK { get; set; }


            [Display(Name = "�س�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TC { get; set; }


            [Display(Name = "��ϵ�绰")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LXDH { get; set; }


            [Display(Name = "ͨ�ŵ�ַ")]
            [StringLength(180)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TXDZ { get; set; }


            [Display(Name = "��������")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YZBM { get; set; }


            [Display(Name = "��������")]
            [StringLength(40)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DZXX { get; set; }


            [Display(Name = "��ҳ��ַ")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYDZ { get; set; }


            [Display(Name = "ѧ����")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XJH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧ����ǰ״̬��")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XSDQZTM { get; set; }


            [Display(Name = "�໤��һ")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JHRY { get; set; }


            [Display(Name = "�໤�˶�")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JHRE { get; set; }


        }
    }
}
