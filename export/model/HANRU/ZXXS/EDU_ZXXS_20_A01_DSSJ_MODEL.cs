namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_20_A01_DSSJ_metadata))]
    public partial class EDU_ZXXS_20_A01_DSSJ
    {
        public EDU_ZXXS_20_A01_DSSJ()
        {
            DSXM = "";
            DSJS = "";
            BJIDLB = "";
            BJMCLB = "";
        }
        public class EDU_ZXXS_20_A01_DSSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教师")]
            public Int32 JSID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "导师姓名")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DSXM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "导师介绍")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DSJS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJIDLB { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级名称列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJMCLB { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "最多可选择人数")]
            public Int32 ZDKXZRS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "最低需选择人数")]
            public Int32 ZDXXZRS { get; set; }


        }
    }
}
