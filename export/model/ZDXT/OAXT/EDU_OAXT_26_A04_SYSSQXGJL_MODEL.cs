namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_26_A04_SYSSQXGJL_metadata))]
    public partial class EDU_OAXT_26_A04_SYSSQXGJL
    {
        public EDU_OAXT_26_A04_SYSSQXGJL()
        {
            XGYHID = "";
            XGYHXM = "";
            XGSJ = DateTime.Now;
        }
        public class EDU_OAXT_26_A04_SYSSQXGJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "实验室申请表")]
            public Int32 SQID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "修改用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XGYHID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "修改用户姓名")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XGYHXM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "修改时间")]
            public DateTime XGSJ { get; set; }


        }
    }
}
