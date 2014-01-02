namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZFC_10_A03_BZRXQ_metadata))]
    public partial class EDU_ZZFC_10_A03_BZRXQ
    {
        public EDU_ZZFC_10_A03_BZRXQ()
        {
            BJID = "";
            XQSJ = DateTime.Now;
        }
        public class EDU_ZZFC_10_A03_BZRXQ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "班主任")]
            public Int32 BZRID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "下寝时间")]
            public DateTime XQSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "下寝次数")]
            public Int32 XQCS { get; set; }


        }
    }
}
