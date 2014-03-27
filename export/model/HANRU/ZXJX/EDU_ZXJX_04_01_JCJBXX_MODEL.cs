namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_04_01_JCJBXX_metadata))]
    public partial class EDU_ZXJX_04_01_JCJBXX
    {
        public EDU_ZXJX_04_01_JCJBXX()
        {
            JCDM = "";
            JCMC = "";
            DYZZ = "";
            BC = "";
        }
        public class EDU_ZXJX_04_01_JCJBXX_metadata
        {
            [Required(ErrorMessage = "必填")]
            [Display(Name = "编号")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "学校")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "教材代码")]
            [StringLength(13)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JCDM { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "教材名称")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JCMC { get; set; }


            [Display(Name = "出版号")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CBH { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "第一作者")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DYZZ { get; set; }


            [Display(Name = "其他作者")]
            [StringLength(90)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QTZZ { get; set; }


            [Required(ErrorMessage = "必填",AllowEmptyStrings = true)]
            [Display(Name = "版次")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BC { get; set; }


            [Display(Name = "印次")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YC { get; set; }


            [Display(Name = "价格")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal JG { get; set; }


            [Display(Name = "出版社")]
            [StringLength(180)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CBS { get; set; }


            [Display(Name = "出版日期")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CBRQ { get; set; }


            [Display(Name = "是否有练习册")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFYLXC { get; set; }


            [Display(Name = "是否有教参教辅")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFYJCJF { get; set; }


            [Display(Name = "内容简介")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NRJJ { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "当前状态")]
            public Int32 DQZT { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "最低库存")]
            public Int32 ZDKC { get; set; }


            [Required(ErrorMessage = "必填")]
            [Display(Name = "当前库存")]
            public Int32 DQKC { get; set; }


        }
    }
}
