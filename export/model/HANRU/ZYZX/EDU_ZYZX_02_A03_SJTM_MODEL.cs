namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_02_A03_SJTM_metadata))]
    public partial class EDU_ZYZX_02_A03_SJTM
    {
        public EDU_ZYZX_02_A03_SJTM()
        {
            TM = "";
            SCRID = "";
            SCSJ = DateTime.Now;
            SHRID = "";
            SHSJ = DateTime.Now;
        }
        public class EDU_ZYZX_02_A03_SJTM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "课程库")]
            public Int32 KCKID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "知识点")]
            public Int32 ZSDID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "类型")]
            public Int32 LXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "题目")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "难度系数")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal NDXS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分值")]
            [Range(typeof(decimal), "0", "99999")]
            public decimal FZ { get; set; }


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


        }
    }
}
