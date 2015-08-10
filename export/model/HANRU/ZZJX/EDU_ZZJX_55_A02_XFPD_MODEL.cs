namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_55_A02_XFPD_metadata))]
    public partial class EDU_ZZJX_55_A02_XFPD
    {
        public EDU_ZZJX_55_A02_XFPD()
        {
            PDMC = "";
        }
        public class EDU_ZZJX_55_A02_XFPD_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PDMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            [Range(typeof(decimal), "0", "999")]
            public decimal FSSX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            [Range(typeof(decimal), "0", "999")]
            public decimal FSXX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ռ�γ�ѧ�ֱ���")]
            [Range(typeof(decimal), "0", "999")]
            public decimal BL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����˳��")]
            public Int32 PLSX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������Ϣ")]
            public Int32 FZXXID { get; set; }


        }
    }
}
