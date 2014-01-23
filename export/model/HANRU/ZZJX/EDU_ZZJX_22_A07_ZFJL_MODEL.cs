namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A07_ZFJL_metadata))]
    public partial class EDU_ZZJX_22_A07_ZFJL
    {
        public EDU_ZZJX_22_A07_ZFJL()
        {
            ZFSJ = DateTime.Now;
            ZFJL = "";
        }
        public class EDU_ZZJX_22_A07_ZFJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵϰ��")]
            public Int32 SXSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʦ")]
            public Int32 JSID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�߷�ʱ��")]
            public DateTime ZFSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�߷ü�¼")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZFJL { get; set; }


        }
    }
}
