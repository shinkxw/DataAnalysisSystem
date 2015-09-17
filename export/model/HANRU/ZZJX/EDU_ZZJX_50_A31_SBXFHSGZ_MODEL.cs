namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_50_A31_SBXFHSGZ_metadata))]
    public partial class EDU_ZZJX_50_A31_SBXFHSGZ
    {
        public EDU_ZZJX_50_A31_SBXFHSGZ()
        {
        }
        public class EDU_ZZJX_50_A31_SBXFHSGZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѡ�޿γ����")]
            public Int32 XXKCLBID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ɼ�����")]
            [Range(typeof(decimal), "0", "999")]
            public decimal CJSX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ɼ�����")]
            [Range(typeof(decimal), "0", "999")]
            public decimal CJXX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ�ֻ������")]
            [Range(typeof(decimal), "0", "999")]
            public decimal XFHSBL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ȼ�")]
            public Int32 YXJ { get; set; }


        }
    }
}
