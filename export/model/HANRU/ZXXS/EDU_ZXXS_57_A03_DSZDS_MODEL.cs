namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_57_A03_DSZDS_metadata))]
    public partial class EDU_ZXXS_57_A03_DSZDS
    {
        public EDU_ZXXS_57_A03_DSZDS()
        {
            TJSJ = DateTime.Now;
        }
        public class EDU_ZXXS_57_A03_DSZDS_metadata
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


            [Required(ErrorMessage = "必填")]
            [Display(Name = "角色")]
            public Int32 JUESEID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加时间")]
            public DateTime TJSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "序号")]
            public Int32 XH { get; set; }


        }
    }
}
