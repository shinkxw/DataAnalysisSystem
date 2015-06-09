namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZWXT_05_A08_XCBS_metadata))]
    public partial class EDU_ZWXT_05_A08_XCBS
    {
        public EDU_ZWXT_05_A08_XCBS()
        {
            BSYHID = "";
            BSSJ = DateTime.Now;
            SHYHID = "";
            SHSJ = DateTime.Now;
            BSSM = "";
        }
        public class EDU_ZWXT_05_A08_XCBS_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "校产")]
            public Int32 XCID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "报失用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BSYHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "报失时间")]
            public DateTime BSSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "审核用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHYHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核时间")]
            public DateTime SHSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "报失状态")]
            public Int32 BSZT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "报失说明")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BSSM { get; set; }


        }
    }
}
