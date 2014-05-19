namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A09_JLTD_metadata))]
    public partial class EDU_ZZJX_22_A09_JLTD
    {
        public EDU_ZZJX_22_A09_JLTD()
        {
            JLNR = "";
            TDSJ = DateTime.Now;
            FKNR = "";
        }
        public class EDU_ZZJX_22_A09_JLTD_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实习生")]
            public Int32 SXSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "企业")]
            public Int32 ComID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "岗位")]
            public Int32 GWID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "简历内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JLNR { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "投递时间")]
            public DateTime TDSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "是否查看")]
            public Int32 SFCK { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "反馈内容")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FKNR { get; set; }


        }
    }
}
