namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A03_SXWZJL_metadata))]
    public partial class EDU_ZZJX_22_A03_SXWZJL
    {
        public EDU_ZZJX_22_A03_SXWZJL()
        {
            WzTime = new DateTime(1900, 1, 1);
            WGWZJL = "";
            JYJXJGJCS = "";
        }
        public class EDU_ZZJX_22_A03_SXWZJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ҵ")]
            public Int32 ComID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 StuID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Υ��ʱ��")]
            public DateTime WzTime { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "Υ��Υ�¼�¼")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String WGWZJL { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�����ѵ���Ľ���ʩ")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JYJXJGJCS { get; set; }


        }
    }
}
