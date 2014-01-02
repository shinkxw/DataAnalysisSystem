namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXDY_04_A06_ZZZC_metadata))]
    public partial class EDU_ZXDY_04_A06_ZZZC
    {
        public EDU_ZXDY_04_A06_ZZZC()
        {
            ZCM = "";
            XQKSRQ = DateTime.Now;
            XQJSRQ = DateTime.Now;
        }
        public class EDU_ZXDY_04_A06_ZZZC_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "�ܴα�")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ܴ���")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZCM { get; set; }


            [Display(Name = "��ʼ����")]
            public DateTime XQKSRQ { get; set; }


            [Display(Name = "��������")]
            public DateTime XQJSRQ { get; set; }


        }
    }
}
