namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_23_A04_PHZYDCTM_metadata))]
    public partial class EDU_ZZJG_23_A04_PHZYDCTM
    {
        public EDU_ZZJG_23_A04_PHZYDCTM()
        {
            DCXM = "";
            DCZB = "";
        }
        public class EDU_ZZJG_23_A04_PHZYDCTM_metadata
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


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 DCMCID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������Ŀ")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DCXM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����ָ��")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DCZB { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "״̬")]
            public Int32 ZT { get; set; }


        }
    }
}
