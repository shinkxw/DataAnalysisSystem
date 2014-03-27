namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXXS_51_A02_KHDLXM_metadata))]
    public partial class EDU_ZXXS_51_A02_KHDLXM
    {
        public EDU_ZXXS_51_A02_KHDLXM()
        {
            DLXMMC = "";
        }
        public class EDU_ZXXS_51_A02_KHDLXM_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "所属大类")]
            public Int32 SSDLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "大类项目名称")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DLXMMC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "分值类型")]
            public Int32 FZLX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "项目最高分")]
            [Range(typeof(decimal), "0", "999")]
            public decimal XMZGF { get; set; }


        }
    }
}
