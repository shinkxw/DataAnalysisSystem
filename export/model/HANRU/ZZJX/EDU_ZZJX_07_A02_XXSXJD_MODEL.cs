namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_07_A02_XXSXJD_metadata))]
    public partial class EDU_ZZJX_07_A02_XXSXJD
    {
        public EDU_ZZJX_07_A02_XXSXJD()
        {
            JDM = "";
            JDKSSJ = new DateTime(1900, 1, 1);
            JDJSSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZZJX_07_A02_XXSXJD_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵϰ�׶�")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵϰ�ƻ�")]
            public Int32 SXJHID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�׶���")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JDM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�׶ο�ʼʱ��")]
            public DateTime JDKSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�׶ν���ʱ��")]
            public DateTime JDJSSJ { get; set; }


        }
    }
}
