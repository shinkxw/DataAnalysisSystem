namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJG_20_A07_XSPJKPJG_metadata))]
    public partial class EDU_ZZJG_20_A07_XSPJKPJG
    {
        public EDU_ZZJG_20_A07_XSPJKPJG()
        {
            IP = "";
            PJSJ = DateTime.Now;
        }
        public class EDU_ZZJG_20_A07_XSPJKPJG_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������Ŀ")]
            public Int32 KPTMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����༶")]
            public Int32 KPBJID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ְ��")]
            public Int32 JZGJBSJID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "IP��ַ")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String IP { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime PJSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ֵ")]
            public Int32 FZ { get; set; }


        }
    }
}
