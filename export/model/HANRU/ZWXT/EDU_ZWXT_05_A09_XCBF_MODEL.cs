namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZWXT_05_A09_XCBF_metadata))]
    public partial class EDU_ZWXT_05_A09_XCBF
    {
        public EDU_ZWXT_05_A09_XCBF()
        {
            BFYHID = "";
            BFSJ = DateTime.Now;
            SHYHID = "";
            SHSJ = DateTime.Now;
            BFSM = "";
        }
        public class EDU_ZWXT_05_A09_XCBF_metadata
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
            [Display(Name = "报废用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BFYHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "报废时间")]
            public DateTime BFSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "审核用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHYHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核时间")]
            public DateTime SHSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "报废状态")]
            public Int32 BFZT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "报废说明")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BFSM { get; set; }


        }
    }
}
