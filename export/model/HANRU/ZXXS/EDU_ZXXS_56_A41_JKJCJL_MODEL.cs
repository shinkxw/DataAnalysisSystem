namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_56_A41_JKJCJL_metadata))]
    public partial class EDU_ZXXS_56_A41_JKJCJL
    {
        public EDU_ZXXS_56_A41_JKJCJL()
        {
            NJID = "";
            BJID = "";
            TJRQ = DateTime.Now;
            TLZ = "";
            TLY = "";
            FYJYYZK = "";
            SY = "";
            SJ = "";
            BB = "";
            KQ = "";
            XZF = "";
            GPCW = "";
            JZSZ = "";
            PZ = "";
            PF = "";
            CLB = "";
            XT = "";
            JWBS = "";
            XYQM = "";
            JZQM = "";
            DJYHID = "";
        }
        public class EDU_ZXXS_56_A41_JKJCJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XSID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�꼶")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�༶")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�������")]
            public DateTime TJRQ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����������")]
            [Range(typeof(decimal), "0", "9")]
            public decimal ZLYSL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���������")]
            [Range(typeof(decimal), "0", "9")]
            public decimal ZJZSL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���������")]
            public Int32 ZJZDS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����������")]
            [Range(typeof(decimal), "0", "9")]
            public decimal YLYSL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ҽ�������")]
            [Range(typeof(decimal), "0", "9")]
            public decimal YJZSL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ҽ�������")]
            public Int32 YJZDS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TLZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TLY { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������Ӫ��״��")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FYJYYZK { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            [Range(typeof(decimal), "0", "999")]
            public decimal SG { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            [Range(typeof(decimal), "0", "999")]
            public decimal TZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�λ���")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal FHL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ѫѹ")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal XY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 MB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ɳ��")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SY { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ɫ��")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ǲ�")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ǻ")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KQ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���ࡢ��")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XZF { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ƣ��θ��")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GPCW { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������֫")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZSZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ƽ��")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "Ƥ��")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PF { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ⱦ��")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��͸")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������ʷ")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JWBS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "Уҽǩ��")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XYQM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ҳ�ǩ��")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JZQM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ǽ��û�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DJYHID { get; set; }


        }
    }
}
