namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZXS_14_A04_XSWWYTZQSJ_metadata))]
    public partial class EDU_ZZXS_14_A04_XSWWYTZQSJ
    {
        public EDU_ZZXS_14_A04_XSWWYTZQSJ()
        {
            JXBMC = "";
            ZQNR = "";
            ZQSJ = new DateTime(1900, 1, 1);
            TJSJ = new DateTime(1900, 1, 1);
        }
        public class EDU_ZZXS_14_A04_XSWWYTZQSJ_metadata
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


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ѧ������")]
            [StringLength(36)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JXBMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ֵ����Ա����")]
            public Int32 ZQRYLX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ֵ����Ա")]
            public Int32 ZQRYID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ֵ������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ZQNR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ֵ��ʱ��")]
            public DateTime ZQSJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ʱ��")]
            public DateTime TJSJ { get; set; }


        }
    }
}
