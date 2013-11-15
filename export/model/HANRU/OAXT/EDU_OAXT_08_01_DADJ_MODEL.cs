namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_08_01_DADJ_metadata))]
    public partial class EDU_OAXT_08_01_DADJ
    {
        public EDU_OAXT_08_01_DADJ()
        {
            QZH = "";
            ND = "";
            MLH = "";
            AJH = "";
            TM = "";
            ZTC = "";
            QSRQ = new DateTime(1900, 1, 1);
            JZRQ = new DateTime(1900, 1, 1);
            BGQXM = "";
            CFWZ = "";
            DAFLM = "";
        }
        public class EDU_OAXT_08_01_DADJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "全宗号")]
            [StringLength(10)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QZH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "年度")]
            [StringLength(4)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ND { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "目录号")]
            [StringLength(5)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MLH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "案卷号")]
            [StringLength(5)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String AJH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "题名")]
            [StringLength(120)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "主题词")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZTC { get; set; }


            [Display(Name = "起始日期")]
            public DateTime QSRQ { get; set; }


            [Display(Name = "截止日期")]
            public DateTime JZRQ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "保管期限码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BGQXM { get; set; }


            [Display(Name = "密级码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MJM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "页数")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal YS { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "份数")]
            [Range(typeof(decimal), "0", "99999999")]
            public decimal FS { get; set; }


            [Display(Name = "编制单位")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BZDW { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "存放位置")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CFWZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "档案分类码")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DAFLM { get; set; }


        }
    }
}
