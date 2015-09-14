namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_55_A16_CJSB_metadata))]
    public partial class EDU_ZZJX_55_A16_CJSB
    {
        public EDU_ZZJX_55_A16_CJSB()
        {
            SBRID = "";
            SBSJ = DateTime.Now;
        }
        public class EDU_ZZJX_55_A16_CJSB_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ѧ�ƻ���")]
            public Int32 JXJHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ϱ���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SBRID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�ϱ�ʱ��")]
            public DateTime SBSJ { get; set; }


        }
    }
}
