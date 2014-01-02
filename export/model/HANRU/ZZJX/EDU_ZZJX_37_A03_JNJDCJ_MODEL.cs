namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_37_A03_JNJDCJ_metadata))]
    public partial class EDU_ZZJX_37_A03_JNJDCJ
    {
        public EDU_ZZJX_37_A03_JNJDCJ()
        {
            DJSJ = DateTime.Now;
        }
        public class EDU_ZZJX_37_A03_JNJDCJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "鉴定项目")]
            public Int32 JDXMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "技能鉴定安排")]
            public Int32 JNJDAPID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生信息")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "成绩")]
            public Int32 CJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "登记教师")]
            public Int32 DJJSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "登记时间")]
            public DateTime DJSJ { get; set; }


        }
    }
}
