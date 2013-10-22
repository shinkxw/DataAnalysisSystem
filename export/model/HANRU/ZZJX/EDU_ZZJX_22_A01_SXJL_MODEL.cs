namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A01_SXJL_metadata))]
    public partial class EDU_ZZJX_22_A01_SXJL
    {
        public EDU_ZZJX_22_A01_SXJL()
        {
            KSSJ = new DateTime(1900, 1, 1);
            JSSJ = new DateTime(1900, 1, 1);
            SXNR = "";
            SXFS = "";
            ZDSFXM = "";
            ZDSFPY = "";
            ZDSFPDSJ = new DateTime(1900, 1, 1);
            ZDJSXM = "";
            ZDJSPY = "";
            ZDJSPDSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZZJX_22_A01_SXJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 StuID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʼʱ��")]
            public DateTime KSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime JSSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ʵϰ����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SXNR { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ʵϰ��˼")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SXFS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 ZWPD { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ָ��ʦ������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDSFXM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ָ��ʦ������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDSFPY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ָ��ʦ������ʱ��")]
            public DateTime ZDSFPDSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʦ������")]
            public Int32 ZFPD { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ָ����ʦ����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDJSXM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ָ����ʦ����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDJSPY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ָ����ʦ����ʱ��")]
            public DateTime ZDJSPDSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʦ����")]
            public Int32 JSPD { get; set; }


        }
    }
}
