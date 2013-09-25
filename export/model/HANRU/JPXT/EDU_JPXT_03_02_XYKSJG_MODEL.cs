namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_JPXT_03_02_XYKSJG_metadata))]
    public partial class EDU_JPXT_03_02_XYKSJG
    {
        public EDU_JPXT_03_02_XYKSJG()
        {
        }
        public class EDU_JPXT_03_02_XYKSJG_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学员")]
            public Int32 XYID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "科目考试")]
            public Int32 KMKSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考试结果")]
            public Int32 KSJG { get; set; }


        }
    }
}
