namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_21_A03_SXGW_metadata))]
    public partial class EDU_ZZJX_21_A03_SXGW
    {
        public EDU_ZZJX_21_A03_SXGW()
        {
        }
        public class EDU_ZZJX_21_A03_SXGW_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 StuID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��λ")]
            public Int32 JobID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��˾���״̬")]
            public Int32 GSSHZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "¼ȡ����")]
            public Int32 TypeID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵϰ��״̬")]
            public Int32 Status { get; set; }


        }
    }
}
