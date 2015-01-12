namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_KTGL_05_A01_KTNR_metadata))]
    public partial class EDU_KTGL_05_A01_KTNR
    {
        public EDU_KTGL_05_A01_KTNR()
        {
            KTMC = "";
            KTFZRID = "";
            KTFZRQQ = "";
            KTFZRDH = "";
            CYRYMD = "";
            YJFA = "";
            YJCG = "";
            JTBG = "";
        }
        public class EDU_KTGL_05_A01_KTNR_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "课题级别")]
            public Int32 KTJBID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课题名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KTMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课题负责人")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KTFZRID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课题负责人QQ")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KTFZRQQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "课题负责人电话")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KTFZRDH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "参与人员名单")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CYRYMD { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "研究方案")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YJFA { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "研究成果")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YJCG { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "结题报告")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JTBG { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "目录")]
            public Int32 MLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核状态")]
            public Int32 SHZT { get; set; }


        }
    }
}
