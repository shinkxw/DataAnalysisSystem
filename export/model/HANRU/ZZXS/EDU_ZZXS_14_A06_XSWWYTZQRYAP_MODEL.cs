namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_14_A06_XSWWYTZQRYAP_metadata))]
    public partial class EDU_ZZXS_14_A06_XSWWYTZQRYAP
    {
        public EDU_ZZXS_14_A06_XSWWYTZQRYAP()
        {
            ZQKSSJ = DateTime.Now;
            ZQJSSJ = DateTime.Now;
        }
        public class EDU_ZZXS_14_A06_XSWWYTZQRYAP_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ֵ����Ŀ")]
            public Int32 ZQXMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ֵ����Ա����")]
            public Int32 ZQRYLX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ֵ����Ա")]
            public Int32 ZQRYID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ֵ�ڿ�ʼʱ��")]
            public DateTime ZQKSSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ֵ�ڽ���ʱ��")]
            public DateTime ZQJSSJ { get; set; }


        }
    }
}
