namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_36_A01_JXJH_metadata))]
    public partial class EDU_ZZJX_36_A01_JXJH
    {
        public EDU_ZZJX_36_A01_JXJH()
        {
            JHMC = "";
            KSSJ = DateTime.Now;
            JSSJ = DateTime.Now;
            JXNR = "";
            JXXS = "";
        }
        public class EDU_ZZJX_36_A01_JXJH_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ƻ�����")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JHMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ʼʱ��")]
            public DateTime KSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime JSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ϰ��λ")]
            public Int32 JXDWID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ϰ����")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXNR { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ϰѧ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXXS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ���")]
            public Int32 SFKQ { get; set; }


        }
    }
}
