namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A06_SXJC_metadata))]
    public partial class EDU_ZZJX_22_A06_SXJC
    {
        public EDU_ZZJX_22_A06_SXJC()
        {
            Apprail = "";
            Remark = "";
        }
        public class EDU_ZZJX_22_A06_SXJC_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 StuID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学年")]
            public Int32 XNID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "奖惩类型")]
            public Int32 typeid { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "处理结果")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Apprail { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Remark { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加人")]
            public Int32 AppraierID { get; set; }


        }
    }
}
