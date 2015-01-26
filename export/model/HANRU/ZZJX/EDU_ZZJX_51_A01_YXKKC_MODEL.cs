namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_51_A01_YXKKC_metadata))]
    public partial class EDU_ZZJX_51_A01_YXKKC
    {
        public EDU_ZZJX_51_A01_YXKKC()
        {
            KCMC = "";
            NJID = "";
            NJMCLB = "";
            KCJS = "";
        }
        public class EDU_ZZJX_51_A01_YXKKC_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ�����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ν�ʦ")]
            public Int32 KKJSID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�꼶ID�б�")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�꼶�����б�")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NJMCLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�γ̽���")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KCJS { get; set; }


        }
    }
}
