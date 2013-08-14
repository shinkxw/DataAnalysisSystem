namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXBG_01_01_WJJBSJ_metadata))]
    public partial class EDU_ZXBG_01_01_WJJBSJ
    {
        public EDU_ZXBG_01_01_WJJBSJ()
        {
            WJBH = "";
            WJWH = "";
            BT = "";
            ZTC = "";
            MJM = "";
            JJCDM = "";
            WJFLM = "";
            ZW = "";
            FJ = "";
            FWRQ = "";
            CSDW = "";
        }
        public class EDU_ZXBG_01_01_WJJBSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "文件")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "文件编号")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WJBH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "文件文号")]
            [StringLength(24)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WJWH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "标题")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BT { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "主题词")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZTC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "密级码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MJM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "紧急程度码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JJCDM { get; set; }


            [Display(Name = "页数")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal YS { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "文件分类码")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WJFLM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "正文")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZW { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "附件")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "发文日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FWRQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "抄送单位")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CSDW { get; set; }


        }
    }
}
