namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZWXT_05_A07_PDXD_metadata))]
    public partial class EDU_ZWXT_05_A07_PDXD
    {
        public EDU_ZWXT_05_A07_PDXD()
        {
            BZ = "";
            BGYHID = "";
        }
        public class EDU_ZWXT_05_A07_PDXD_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "盘点")]
            public Int32 PDID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "校产")]
            public Int32 XCID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "校产数量")]
            public Int32 XCSL { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "盘点实数")]
            public Int32 PDSS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "保管用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BGYHID { get; set; }


        }
    }
}
