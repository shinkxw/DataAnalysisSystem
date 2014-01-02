namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_36_A02_JXBG_metadata))]
    public partial class EDU_ZZJX_36_A02_JXBG
    {
        public EDU_ZZJX_36_A02_JXBG()
        {
            BGNR = "";
            BGSJ = DateTime.Now;
            BGBT = "";
        }
        public class EDU_ZZJX_36_A02_JXBG_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ϰ�ƻ�")]
            public Int32 JXJHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ����Ϣ")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BGNR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime BGSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�������")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BGBT { get; set; }


        }
    }
}
