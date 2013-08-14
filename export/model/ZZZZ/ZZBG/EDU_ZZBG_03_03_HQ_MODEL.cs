namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZBG_03_03_HQ_metadata))]
    public partial class EDU_ZZBG_03_03_HQ
    {
        public EDU_ZZBG_03_03_HQ()
        {
            HQR = "";
            HQDW = "";
            HQYJ = "";
            HQRQ = "";
        }
        public class EDU_ZZBG_03_03_HQ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ļ�")]
            public Int32 WJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ǩ��")]
            public Int32 HQRID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ǩ��")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HQR { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ǩ��λ")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HQDW { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ǩ���")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HQYJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ǩ����")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HQRQ { get; set; }


        }
    }
}
