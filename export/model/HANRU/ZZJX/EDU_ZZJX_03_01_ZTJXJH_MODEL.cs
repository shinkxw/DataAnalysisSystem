namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_03_01_ZTJXJH_metadata))]
    public partial class EDU_ZZJX_03_01_ZTJXJH
    {
        public EDU_ZZJX_03_01_ZTJXJH()
        {
            JHBH = "";
            JHNJ = "";
            SFKY = "";
        }
        public class EDU_ZZJX_03_01_ZTJXJH_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ƻ����")]
            [StringLength(5)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JHBH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ƻ��꼶")]
            [StringLength(4)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JHNJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "רҵ���")]
            public Int32 ZYXXID { get; set; }


            [Display(Name = "�ƻ�רҵ����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JHZYMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѧ��Ҫ��")]
            [Range(typeof(decimal), "0", "999")]
            public decimal ZXFYQ { get; set; }


            [Display(Name = "��������")]
            [StringLength(6)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JLNY { get; set; }


            [Display(Name = "����ѧ��")]
            [Range(typeof(decimal), "0", "999")]
            public decimal SYXZ { get; set; }


            [Display(Name = "����Ŀ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PYMB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ƿ����")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFKY { get; set; }


            [Display(Name = "����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "רҵ����")]
            public Int32 ZYRS { get; set; }


        }
    }
}
