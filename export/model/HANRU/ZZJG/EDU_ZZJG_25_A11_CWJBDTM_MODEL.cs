namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_25_A11_CWJBDTM_metadata))]
    public partial class EDU_ZZJG_25_A11_CWJBDTM
    {
        public EDU_ZZJG_25_A11_CWJBDTM()
        {
            JBDH = "";
            JBDW = "";
            BZY = "";
            JBRQ = "";
            ZY = "";
        }
        public class EDU_ZZJG_25_A11_CWJBDTM_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "һ����Ŀ")]
            public Int32 YJKMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������Ŀ")]
            public Int32 EJKMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������Ŀ")]
            public Int32 SJKMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "רҵ����")]
            public Int32 ZYDLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "רҵС��")]
            public Int32 ZYXLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ᱨ����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JBDH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ᱨ��λ")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JBDW { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����Ա")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZY { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ᱨ����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JBRQ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ժҪ")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            [Range(typeof(decimal), "0", "9999999999")]
            public decimal JE { get; set; }


        }
    }
}
