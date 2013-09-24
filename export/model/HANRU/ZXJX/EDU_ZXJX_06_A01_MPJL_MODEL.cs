namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_06_A01_MPJL_metadata))]
    public partial class EDU_ZXJX_06_A01_MPJL
    {
        public EDU_ZXJX_06_A01_MPJL()
        {
            MPKC = "";
            NJID = "";
            BJID = "";
            MPSJ = new DateTime(1900, 1, 1);
            RRSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZXJX_06_A01_MPJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "面批教师")]
            public Int32 MPJS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "面批课程")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MPKC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "面批学生")]
            public Int32 MPXS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学年")]
            public Int32 XNID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "年级")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "面批结果")]
            public Int32 MPJG { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "面批时间")]
            public DateTime MPSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "录入时间")]
            public DateTime RRSJ { get; set; }


            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "教师任课编号")]
            public Int32 JSRKID { get; set; }


        }
    }
}
