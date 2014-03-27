namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZZS_01_01_ZSXX_metadata))]
    public partial class EDU_ZZZS_01_01_ZSXX
    {
        public EDU_ZZZS_01_01_ZSXX()
        {
            ZKZH = "";
            KSH = "";
            RXNY = "";
            YSWGYZM = "";
            KSFSM = "";
            BYZX = "";
            BYZXYZBM = "";
        }
        public class EDU_ZZZS_01_01_ZSXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ����Ϣ���ݱ�")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "׼��֤��")]
            [StringLength(15)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZKZH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSH { get; set; }


            [Display(Name = "��������������")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KQXZQHM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѧ����")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RXNY { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "Ӧ�����������")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YSWGYZM { get; set; }


            [Display(Name = "����רҵ��1")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BKZYM1 { get; set; }


            [Display(Name = "����רҵ��2")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BKZYM2 { get; set; }


            [Display(Name = "����רҵ��3")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BKZYM3 { get; set; }


            [Display(Name = "����רҵ��4")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BKZYM4 { get; set; }


            [Display(Name = "����רҵ��5")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BKZYM5 { get; set; }


            [Display(Name = "����רҵ��6")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BKZYM6 { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���Է�ʽ��")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSFSM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ҵ��ѧ")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BYZX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ҵ��ѧ��������")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BYZXYZBM { get; set; }


            [Display(Name = "�����س�")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSTC { get; set; }


            [Display(Name = "������ʹ�")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JLYCC { get; set; }


            [Display(Name = "������")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSHJ { get; set; }


            [Display(Name = "��Ṥ��")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHGZ { get; set; }


            [Display(Name = "������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TJJL { get; set; }


            [Display(Name = "���岡ʷ")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZBS { get; set; }


            [Display(Name = "����������ʷ")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSJWBS { get; set; }


            [Display(Name = "���")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal SG { get; set; }


            [Display(Name = "��������")]
            [Range(typeof(decimal), "0", "99")]
            public decimal KSSL { get; set; }


        }
    }
}
