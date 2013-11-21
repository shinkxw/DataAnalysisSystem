namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_02_A04_SJ_metadata))]
    public partial class EDU_ZYZX_02_A04_SJ
    {
        public EDU_ZYZX_02_A04_SJ()
        {
            KCH = "";
            SYFF = "";
            SJMC = "";
            NR = "";
            SCRID = "";
            SCSJ = new DateTime(1900, 1, 1);
            SHRID = "";
            SHSJ = new DateTime(1900, 1, 1);
            FJ = "";
        }
        public class EDU_ZYZX_02_A04_SJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课程")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "适用范围")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SYFF { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "试卷名称")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SJMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "难度系数")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal NDXS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分值")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal FZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核状态")]
            public Int32 SHZT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "上传人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SCRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "上传时间")]
            public DateTime SCSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "审核人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核时间")]
            public DateTime SHSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "附件")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJ { get; set; }


        }
    }
}
