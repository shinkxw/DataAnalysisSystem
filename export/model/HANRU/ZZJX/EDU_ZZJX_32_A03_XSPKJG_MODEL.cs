namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_32_A03_XSPKJG_metadata))]
    public partial class EDU_ZZJX_32_A03_XSPKJG
    {
        public EDU_ZZJX_32_A03_XSPKJG()
        {
            AdmissionID = "";
        }
        public class EDU_ZZJX_32_A03_XSPKJG_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "专业课程排考结果")]
            public Int32 KCPKID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考试")]
            public Int32 ExamID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考场")]
            public Int32 EXAMROOMID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "场次")]
            public Int32 CCID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考试科目")]
            public Int32 KCQDID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 StudentID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "座位号")]
            public Int32 SeatID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "准考证号")]
            [StringLength(24)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String AdmissionID { get; set; }


        }
    }
}
