namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_12_A01_STJBSJ_metadata))]
    public partial class EDU_ZZXS_12_A01_STJBSJ
    {
        public EDU_ZZXS_12_A01_STJBSJ()
        {
            STMC = "";
            STBH = "";
            CLRQ = new DateTime(1900, 1, 1);
            CSR = "";
            PZBM = "";
            STXZ = "";
            ZYHDXS = "";
            DQFZR = "";
            FZRDH = "";
            ZDLS = "";
            ZDLSDH = "";
        }
        public class EDU_ZZXS_12_A01_STJBSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "社团名称")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String STMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "社团编号")]
            [StringLength(4)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String STBH { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "成立日期")]
            public DateTime CLRQ { get; set; }


            [Display(Name = "成立目的")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CLMD { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "创始人")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CSR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "批准部门")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PZBM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "社团性质")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String STXZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "主要活动形式")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZYHDXS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "人数")]
            [Range(typeof(decimal), "0", "999")]
            public decimal RS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "当前负责人")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DQFZR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "负责人电话")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FZRDH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "指导老师")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDLS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "指导老师电话")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZDLSDH { get; set; }


        }
    }
}
