namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_11_A08_KPRY_metadata))]
    public partial class EDU_ZZJG_11_A08_KPRY
    {
        public EDU_ZZJG_11_A08_KPRY()
        {
            KPRIDLB = "";
            BPRIDLB = "";
        }
        public class EDU_ZZJG_11_A08_KPRY_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����������ݱ�")]
            public Int32 KPBHNRID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KPRIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BPRIDLB { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 KPZTID { get; set; }


        }
    }
}
