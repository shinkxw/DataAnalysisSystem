namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_01_01_XSXX_metadata))]
    public partial class EDU_ZZXS_01_01_XSXX
    {
        public EDU_ZZXS_01_01_XSXX()
        {
            XH = "";
            XM = "";
            XMPY = "";
            SFZJLXM = "";
            SFZJH = "";
            XBM = "";
            CSRQ = "";
            CSDM = "";
            JG = "";
            MZM = "";
            HYZKM = "";
            ZZMMM = "";
            HKSZDXZQHM = "";
            HKLBM = "";
            SFSLDRK = "";
        }
        public class EDU_ZZXS_01_01_XSXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧ��")]
            [StringLength(30)]
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


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����ƴ��")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XMPY { get; set; }


            [Display(Name = "������")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CYM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���֤��������")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFZJLXM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���֤����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFZJH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ա���")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XBM { get; set; }


            [Display(Name = "Ѫ����")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XXM { get; set; }


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


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JG { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MZM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����״����")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HYZKM { get; set; }


            [Display(Name = "�����ڽ���")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XYZJM { get; set; }


            [Display(Name = "�۰�̨������")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GATQWM { get; set; }


            [Display(Name = "����״����")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JKZKM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������ò��")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZZMMM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�������ڵ�����������")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HKSZDXZQHM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���������")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HKLBM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ƿ��������˿�")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFSLDRK { get; set; }


            [Display(Name = "����/����")]
            [StringLength(3)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GJDQM { get; set; }


            [Display(Name = "�س�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TC { get; set; }


            [Display(Name = "ѧ����ϵ�绰")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XSLXDH { get; set; }


            [Display(Name = "�����ַ")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WLDZ { get; set; }


            [Display(Name = "��ʱͨѶ��")]
            [StringLength(40)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSTXH { get; set; }


            [Display(Name = "��������")]
            [StringLength(40)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DZXX { get; set; }


            [Display(Name = "��Ƭ(·��)")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZP { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѧѧ��")]
            public Int32 RXXQID { get; set; }


            [Display(Name = "NFC����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NFCKH { get; set; }


        }
    }
}
