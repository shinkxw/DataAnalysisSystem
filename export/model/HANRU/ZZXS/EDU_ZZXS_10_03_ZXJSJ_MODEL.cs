namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_10_03_ZXJSJ_metadata))]
    public partial class EDU_ZZXS_10_03_ZXJSJ
    {
        public EDU_ZZXS_10_03_ZXJSJ()
        {
            ZXJMC = "";
            ZXJLX = "";
            BZ = "";
        }
        public class EDU_ZZXS_10_03_ZXJSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "助学金额")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal ZXJE { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "助学金名称")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZXJMC { get; set; }


            [Display(Name = "资助单位或个人")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZZDWHGR { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "助学金类型")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZXJLX { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否开启")]
            public Int32 SFKQ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "每学期可获奖人数")]
            public Int32 MXQKHJRS { get; set; }


        }
    }
}
