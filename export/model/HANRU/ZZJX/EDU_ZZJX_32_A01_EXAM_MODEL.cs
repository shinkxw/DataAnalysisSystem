namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_32_A01_EXAM_metadata))]
    public partial class EDU_ZZJX_32_A01_EXAM
    {
        public EDU_ZZJX_32_A01_EXAM()
        {
            Name = "";
            CJKSKMLM = "";
            StartDate = DateTime.Now;
            EndDate = DateTime.Now;
        }
        public class EDU_ZZJX_32_A01_EXAM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "考试名称")]
            [StringLength(128)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Name { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "参加考试科目列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CJKSKMLM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "开始日期")]
            public DateTime StartDate { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "截止日期")]
            public DateTime EndDate { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学期")]
            public Int32 XqID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "登分方式")]
            public Int32 DffsID { get; set; }


        }
    }
}
