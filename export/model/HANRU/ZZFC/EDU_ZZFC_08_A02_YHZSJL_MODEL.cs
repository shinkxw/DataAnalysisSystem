namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZFC_08_A02_YHZSJL_metadata))]
    public partial class EDU_ZZFC_08_A02_YHZSJL
    {
        public EDU_ZZFC_08_A02_YHZSJL()
        {
            RZSJ = DateTime.Now;
            SHSJ = DateTime.Now;
            SHR = "";
        }
        public class EDU_ZZFC_08_A02_YHZSJL_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "住宿记录")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "用户")]
            public Int32 YHID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "宿舍楼")]
            public Int32 SSLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "宿舍")]
            public Int32 SSID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "床位")]
            public Int32 CWID { get; set; }


            [Display(Name = "用户姓名")]
            [StringLength(128)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YHXM { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "入住人类型")]
            public Int32 RZRLX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "入住时间")]
            public DateTime RZSJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核状态")]
            public Int32 SHZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "审核时间")]
            public DateTime SHSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "审核人")]
            [StringLength(128)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHR { get; set; }


        }
    }
}
