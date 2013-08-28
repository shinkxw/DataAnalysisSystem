namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_05_A01_KS_metadata))]
    public partial class EDU_ZXJX_05_A01_KS
    {
        public EDU_ZXJX_05_A01_KS()
        {
            KSMC = "";
        }
        public class EDU_ZXJX_05_A01_KS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ��")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XNID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 XQID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String KSMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���Կ�ʼʱ��")]
            public DateTime KSKSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���Խ���ʱ��")]
            public DateTime KSJSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿֿ�ʼʱ��")]
            public DateTime DFKSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿֽ���ʱ��")]
            public DateTime DFJSSJ { get; set; }


        }
    }
}
