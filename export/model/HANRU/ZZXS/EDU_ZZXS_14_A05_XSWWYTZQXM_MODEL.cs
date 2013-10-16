namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_14_A05_XSWWYTZQXM_metadata))]
    public partial class EDU_ZZXS_14_A05_XSWWYTZQXM
    {
        public EDU_ZZXS_14_A05_XSWWYTZQXM()
        {
            ZQXMMC = "";
        }
        public class EDU_ZZXS_14_A05_XSWWYTZQXM_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ֵ����Ŀ����")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZQXMMC { get; set; }


        }
    }
}
