namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_21_A02_SXSGL_metadata))]
    public partial class EDU_ZZJX_21_A02_SXSGL
    {
        public EDU_ZZJX_21_A02_SXSGL()
        {
            Resume = "";
            SXXYS = "";
            SXSXM = "";
        }
        public class EDU_ZZJX_21_A02_SXSGL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵϰ��")]
            public Int32 SZBID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 StuID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Resume { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵϰ��״̬")]
            public Int32 Status { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ʵϰЭ����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SXXYS { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ʵϰ������")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SXSXM { get; set; }


        }
    }
}
