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
            KSSJ = DateTime.Now;
            JSSJ = DateTime.Now;
            SXNR = "";
            SXFS = "";
            ZDSFXM = "";
            ZDSFPY = "";
            ZDSFPDSJ = DateTime.Now;
            ZDJSXM = "";
            ZDJSPY = "";
            ZDJSPDSJ = DateTime.Now;
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
            [Display(Name = "ʵϰ��")]
            public Int32 SXSID { get; set; }


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
