namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_15_A11_ZCPD_metadata))]
    public partial class EDU_OAXT_15_A11_ZCPD
    {
        public EDU_OAXT_15_A11_ZCPD()
        {
            Title = "";
            PanDate = DateTime.Now;
            PanTypeIDs = "";
            Remark = "";
        }
        public class EDU_OAXT_15_A11_ZCPD_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "盘点名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Title { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "盘点日期")]
            public DateTime PanDate { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "盘点目录ID列表")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PanTypeIDs { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Remark { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "状态")]
            public Int32 Statu { get; set; }


        }
    }
}
