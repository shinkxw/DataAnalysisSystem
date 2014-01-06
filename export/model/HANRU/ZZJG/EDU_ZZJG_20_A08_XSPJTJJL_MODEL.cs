namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_20_A08_XSPJTJJL_metadata))]
    public partial class EDU_ZZJG_20_A08_XSPJTJJL
    {
        public EDU_ZZJG_20_A08_XSPJTJJL()
        {
            IP = "";
            TJSJ = DateTime.Now;
        }
        public class EDU_ZZJG_20_A08_XSPJTJJL_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����༶")]
            public Int32 KPBJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʶ����")]
            public Int32 SBM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "IP��ַ")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String IP { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ύʱ��")]
            public DateTime TJSJ { get; set; }


        }
    }
}
