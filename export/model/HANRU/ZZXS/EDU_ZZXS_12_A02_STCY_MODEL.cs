namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_12_A02_STCY_metadata))]
    public partial class EDU_ZZXS_12_A02_STCY
    {
        public EDU_ZZXS_12_A02_STCY()
        {
            XM = "";
            BJID = "";
            CDRQ = new DateTime(1900, 1, 1);
            STZW = "";
            GZNR = "";
            STPJ = "";
            DQZT = "";
            SHSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZZXS_12_A02_STCY_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "社团")]
            public Int32 STID { get; set; }


            [Display(Name = "社团编号")]
            [StringLength(4)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String STBH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学生姓名")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学生")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "学生班级")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BJID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "参团日期")]
            public DateTime CDRQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "社团职务")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String STZW { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "工作内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String GZNR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "社团评价")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String STPJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "当前状态")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DQZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "添加人")]
            public Int32 TJRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核人")]
            public Int32 SHRID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核时间")]
            public DateTime SHSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核状态")]
            public Int32 SHZT { get; set; }


        }
    }
}
