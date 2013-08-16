namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_07_A09_SXRZ_metadata))]
    public partial class EDU_ZZJX_07_A09_SXRZ
    {
        public EDU_ZZJX_07_A09_SXRZ()
        {
            RZBT = "";
            NR = "";
        }
        public class EDU_ZZJX_07_A09_SXRZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵϰ��־")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ����Ϣ")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵϰ�ƻ�")]
            public Int32 SXJHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵϰ�׶�")]
            public Int32 SXJDID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵϰ��/�±�")]
            public Int32 SXZYID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��־����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String RZBT { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NR { get; set; }


        }
    }
}
