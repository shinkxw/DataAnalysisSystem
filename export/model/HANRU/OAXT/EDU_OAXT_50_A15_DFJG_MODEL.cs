namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_50_A15_DFJG_metadata))]
    public partial class EDU_OAXT_50_A15_DFJG
    {
        public EDU_OAXT_50_A15_DFJG()
        {
            WBZ = "";
            DFYHID = "";
            DFSJ = DateTime.Now;
        }
        public class EDU_OAXT_50_A15_DFJG_metadata
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


            [Required(ErrorMessage = "必填")]
            [Display(Name = "打分节点")]
            public Int32 DFJDID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "打分选项")]
            public Int32 DFXXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "文本值")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WBZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分值")]
            [Range(typeof(decimal), "0", "9999")]
            public decimal FZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "打分用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DFYHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "打分时间")]
            public DateTime DFSJ { get; set; }


        }
    }
}
