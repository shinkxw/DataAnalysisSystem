namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_33_A03_FW_metadata))]
    public partial class EDU_OAXT_33_A03_FW
    {
        public EDU_OAXT_33_A03_FW()
        {
            FZ = "";
            SHRID = "";
            SHPZ = "";
            FSDW = "";
            FSZLY = "";
            FSRID = "";
        }
        public class EDU_OAXT_33_A03_FW_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "公文")]
            public Int32 GWID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "附注")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "审核人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "短信通知状态")]
            public Int32 DXTZZT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "审核批注")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHPZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "公章")]
            public Int32 GZID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "重要程度")]
            public Int32 ZYCD { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否需要回复")]
            public Int32 SFHF { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "发送单位或科室")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FSDW { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "发送者留言")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FSZLY { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "发送人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FSRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "报审状态")]
            public Int32 BSZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核状态")]
            public Int32 SHZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "发送状态")]
            public Int32 FSZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "办结状态")]
            public Int32 BJZT { get; set; }


        }
    }
}
