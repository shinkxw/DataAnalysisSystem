namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_31_A02_KSCC_metadata))]
    public partial class EDU_ZZJX_31_A02_KSCC
    {
        public EDU_ZZJX_31_A02_KSCC()
        {
            Name = "";
            ExamDate = new DateTime(1900, 1, 1);
        }
        public class EDU_ZZJX_31_A02_KSCC_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考试")]
            public Int32 ExamID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "场次名称")]
            [StringLength(128)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Name { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考试时段类型")]
            public Int32 TypeID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "考试日期")]
            public DateTime ExamDate { get; set; }


        }
    }
}
