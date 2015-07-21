namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_25_A13_CWJSGZXX_metadata))]
    public partial class EDU_ZZJG_25_A13_CWJSGZXX
    {
        public EDU_ZZJG_25_A13_CWJSGZXX()
        {
        }
        public class EDU_ZZJG_25_A13_CWJSGZXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教师")]
            public Int32 JSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "工资项目")]
            public Int32 GZXMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "年份")]
            public Int32 NF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "月份")]
            public Int32 YF { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "金额")]
            [Range(typeof(decimal), "0", "9999999999")]
            public decimal JE { get; set; }


        }
    }
}
