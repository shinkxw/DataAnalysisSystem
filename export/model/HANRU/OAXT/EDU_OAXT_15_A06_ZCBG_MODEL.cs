namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_15_A06_ZCBG_metadata))]
    public partial class EDU_OAXT_15_A06_ZCBG
    {
        public EDU_OAXT_15_A06_ZCBG()
        {
            TypeName = "";
            Name = "";
            Option = "";
            RegistTime = DateTime.Now;
            Remark = "";
        }
        public class EDU_OAXT_15_A06_ZCBG_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "类别(领用、借用、报损)")]
            public Int32 TypeID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "类别名称")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TypeName { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "库存表")]
            public Int32 AID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "资产名称")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Name { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "操作")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Option { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "登记时间")]
            public DateTime RegistTime { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "备注")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Remark { get; set; }


        }
    }
}
