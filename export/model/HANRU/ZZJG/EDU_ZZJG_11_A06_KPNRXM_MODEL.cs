namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_11_A06_KPNRXM_metadata))]
    public partial class EDU_ZZJG_11_A06_KPNRXM
    {
        public EDU_ZZJG_11_A06_KPNRXM()
        {
            XMMC = "";
            XMXX = "";
        }
        public class EDU_ZZJG_11_A06_KPNRXM_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ŀ����")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XMMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��Ŀ��Ϣ")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XMXX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��������")]
            public Int32 KPNRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������ʽ")]
            public Int32 KPFSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ȩ��")]
            public Int32 QZ { get; set; }


        }
    }
}
