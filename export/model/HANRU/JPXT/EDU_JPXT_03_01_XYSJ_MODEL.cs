namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_JPXT_03_01_XYSJ_metadata))]
    public partial class EDU_JPXT_03_01_XYSJ
    {
        public EDU_JPXT_03_01_XYSJ()
        {
            XM = "";
            SFZH = "";
            XBM = "";
            LXDH = "";
            ZZ = "";
            BMSJ = new DateTime(1900, 1, 1);
            SFQK = "";
            ZJQK = "";
            BYSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_JPXT_03_01_XYSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "姓名")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "身份证号")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFZH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "性别码")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XBM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "联系电话")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LXDH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "住址")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZZ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "报名时间")]
            public DateTime BMSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "缴费情况")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFQK { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "所选车型")]
            public Int32 SXCXID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "增加情况")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZJQK { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "所属教练员")]
            public Int32 SSJLYID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "引荐教练员")]
            public Int32 YJJLYID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "当前状态")]
            public Int32 DQZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "毕业时间")]
            public DateTime BYSJ { get; set; }


        }
    }
}
