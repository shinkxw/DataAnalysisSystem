namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXX_02_01_ZZXQSJ_metadata))]
    public partial class EDU_ZZXX_02_01_ZZXQSJ
    {
        public EDU_ZZXX_02_01_ZZXQSJ()
        {
            XQDM = "";
            XQMC = "";
            XQDZ = "";
            XQLXDH = "";
            XQFZRH = "";
            DZYJ = "";
            XQYZBM = "";
        }
        public class EDU_ZZXX_02_01_ZZXQSJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校名")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "校区代码")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQDM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "校区名称")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQMC { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "校区地址")]
            [StringLength(180)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQDZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "校区联系电话")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQLXDH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "校区负责人号")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQFZRH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "电子邮件")]
            [StringLength(40)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DZYJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "校区邮政编码")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQYZBM { get; set; }


            [Display(Name = "校区所在地行政区划码")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XQSZDXZQHM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "校区面积")]
            [Range(typeof(decimal), "0", "100000000000000000000")]
            public decimal XQMJ { get; set; }


            [Display(Name = "校区建筑面积")]
            [Range(typeof(decimal), "0", "100000000000000000000")]
            public decimal XQJZMJ { get; set; }


            [Display(Name = "校区教学科研仪器设备总值")]
            [Range(typeof(decimal), "0", "9999999999")]
            public decimal XQJXKYSBZZ { get; set; }


            [Display(Name = "校区固定资产总值")]
            [Range(typeof(decimal), "0", "9999999999")]
            public decimal XQGDZCZZ { get; set; }


        }
    }
}
