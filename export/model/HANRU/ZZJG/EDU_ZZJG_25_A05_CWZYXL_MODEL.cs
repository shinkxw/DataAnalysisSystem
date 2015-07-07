namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_25_A05_CWZYXL_metadata))]
    public partial class EDU_ZZJG_25_A05_CWZYXL
    {
        public EDU_ZZJG_25_A05_CWZYXL()
        {
            ZYXLDM = "";
            ZYXLMC = "";
        }
        public class EDU_ZZJG_25_A05_CWZYXL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "רҵ����")]
            public Int32 ZYDLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "רҵС�����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYXLDM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "רҵС������")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYXLMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʦ��")]
            public Int32 JSS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ����")]
            public Int32 XSS { get; set; }


        }
    }
}
