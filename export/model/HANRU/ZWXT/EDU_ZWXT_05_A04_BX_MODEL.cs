namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZWXT_05_A04_BX_metadata))]
    public partial class EDU_ZWXT_05_A04_BX
    {
        public EDU_ZWXT_05_A04_BX()
        {
            XCMC = "";
            BXDD = "";
            BXYHID = "";
            BXSJ = DateTime.Now;
            GZTP = "";
            GZXX = "";
            BZ = "";
        }
        public class EDU_ZWXT_05_A04_BX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "校产名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XCMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "对应校产")]
            public Int32 DYXCID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "报修地点")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BXDD { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "报修用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BXYHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "报修时间")]
            public DateTime BXSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "故障图片")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GZTP { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "故障现象")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GZXX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "维修状态")]
            public Int32 WXZT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
