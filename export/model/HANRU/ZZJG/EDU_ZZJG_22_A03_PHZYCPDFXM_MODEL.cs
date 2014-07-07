namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_22_A03_PHZYCPDFXM_metadata))]
    public partial class EDU_ZZJG_22_A03_PHZYCPDFXM
    {
        public EDU_ZZJG_22_A03_PHZYCPDFXM()
        {
            DFXMMC = "";
        }
        public class EDU_ZZJG_22_A03_PHZYCPDFXM_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ַ�ʽ")]
            public Int32 DFFSID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����Ŀ����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DFXMMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ֵ")]
            public Int32 FZ { get; set; }


        }
    }
}
