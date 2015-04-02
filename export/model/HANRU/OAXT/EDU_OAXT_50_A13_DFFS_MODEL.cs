namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A13_DFFS_metadata))]
    public partial class EDU_OAXT_50_A13_DFFS
    {
        public EDU_OAXT_50_A13_DFFS()
        {
            DFFSMC = "";
        }
        public class EDU_OAXT_50_A13_DFFS_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "项目")]
            public Int32 XMID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "打分方式名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DFFSMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "打分类型")]
            public Int32 DFLX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "最大值")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal ZDZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "最小值")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal ZXZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "默认值")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal MRZ { get; set; }


        }
    }
}
