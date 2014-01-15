namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_01_A03_GRXXBJKG_metadata))]
    public partial class EDU_ZZJG_01_A03_GRXXBJKG
    {
        public EDU_ZZJG_01_A03_GRXXBJKG()
        {
            SCSJ = DateTime.Now;
            HDSJ = DateTime.Now;
            SFKQ = "";
        }
        public class EDU_ZZJG_01_A03_GRXXBJKG_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʼʱ��")]
            public DateTime SCSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime HDSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�Ƿ���")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFKQ { get; set; }


        }
    }
}
