namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_04_A03_ZLWJ_metadata))]
    public partial class EDU_ZYZX_04_A03_ZLWJ
    {
        public EDU_ZYZX_04_A03_ZLWJ()
        {
            BT = "";
            SCSJ = DateTime.Now;
            JJ = "";
            WJM = "";
            SCYHID = "";
            ZLWJDX = "";
        }
        public class EDU_ZYZX_04_A03_ZLWJ_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "资源目录")]
            public Int32 ZYMLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "标题")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "上传时间")]
            public DateTime SCSJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "简介")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JJ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "文件名")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WJM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "上传用户")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SCYHID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "资料文件大小")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZLWJDX { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "资料文件大小(KB)")]
            public Int32 ZLWJDXKB { get; set; }


        }
    }
}
