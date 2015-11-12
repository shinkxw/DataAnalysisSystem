namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_55_A06_KCPFXM_metadata))]
    public partial class EDU_ZZJX_55_A06_KCPFXM
    {
        public EDU_ZZJX_55_A06_KCPFXM()
        {
            XMMC = "";
            LY = "";
        }
        public class EDU_ZZJX_55_A06_KCPFXM_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����Ŀ")]
            public Int32 FXMID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ŀ����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XMMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ�������Ŀ")]
            public Int32 SFYZXM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            [Range(typeof(decimal), "0", "999")]
            public decimal BL { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ������޸�")]
            public Int32 SFYXXG { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�޸�����")]
            [Range(typeof(decimal), "0", "999")]
            public decimal XGSX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�޸�����")]
            [Range(typeof(decimal), "0", "999")]
            public decimal XGXX { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Դ")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LY { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����˳��")]
            public Int32 PLSX { get; set; }


        }
    }
}
