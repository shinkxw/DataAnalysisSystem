namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_12_A04_XSSTCJ_metadata))]
    public partial class EDU_ZZXS_12_A04_XSSTCJ
    {
        public EDU_ZZXS_12_A04_XSSTCJ()
        {
            TJSJ = DateTime.Now;
        }
        public class EDU_ZZXS_12_A04_XSSTCJ_metadata
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
            [Display(Name = "社团成员表")]
            public Int32 STCYID { get; set; }


            [Display(Name = "成绩类型")]
            public Int32 CJLXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分数")]
            [Range(typeof(decimal), "0", "999")]
            public decimal FS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加人")]
            public Int32 TJRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "社团")]
            public Int32 STID { get; set; }


        }
    }
}
