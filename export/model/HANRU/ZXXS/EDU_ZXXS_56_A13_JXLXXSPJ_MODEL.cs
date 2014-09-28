namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_56_A13_JXLXXSPJ_metadata))]
    public partial class EDU_ZXXS_56_A13_JXLXXSPJ
    {
        public EDU_ZXXS_56_A13_JXLXXSPJ()
        {
            DJSJ = DateTime.Now;
        }
        public class EDU_ZXXS_56_A13_JXLXXSPJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "被评学生")]
            public Int32 BPXSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评价学生")]
            public Int32 PJXSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "评价项目")]
            public Int32 PJXMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "打分选项")]
            public Int32 DFXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "登记时间")]
            public DateTime DJSJ { get; set; }


        }
    }
}
