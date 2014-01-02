namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_17_A01_TYXX_metadata))]
    public partial class EDU_ZZXS_17_A01_TYXX
    {
        public EDU_ZZXS_17_A01_TYXX()
        {
            BJID = "";
            RTSJ = DateTime.Now;
            ZRD = "";
            ZRSJ = DateTime.Now;
            ZCSJ = DateTime.Now;
            BZ = "";
        }
        public class EDU_ZZXS_17_A01_TYXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "班级")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "入团时间")]
            public DateTime RTSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "转入地")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZRD { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "转入时间")]
            public DateTime ZRSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "转出时间")]
            public DateTime ZCSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "当前状态")]
            public Int32 DQZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "经办教师")]
            public Int32 JBJSID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


        }
    }
}
