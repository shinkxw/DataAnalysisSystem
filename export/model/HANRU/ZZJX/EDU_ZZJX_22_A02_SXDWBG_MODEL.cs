namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A02_SXDWBG_metadata))]
    public partial class EDU_ZZJX_22_A02_SXDWBG
    {
        public EDU_ZZJX_22_A02_SXDWBG()
        {
        }
        public class EDU_ZZJX_22_A02_SXDWBG_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = " ���ѧ��")]
            public Int32 StuID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ǰ��λ")]
            public Int32 OrgJobID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ǰ��ҵ")]
            public Int32 OrgComID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������λ")]
            public Int32 NowJobID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�������ҵ")]
            public Int32 NowComID { get; set; }


        }
    }
}
