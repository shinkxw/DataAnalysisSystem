namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_07_A08_SXTS_metadata))]
    public partial class EDU_ZZJX_07_A08_SXTS
    {
        public EDU_ZZJX_07_A08_SXTS()
        {
            TSSJ = new DateTime(1900, 1, 1);
            TSYY = "";
            TSJG = "";
            QYJY = "";
        }
        public class EDU_ZZJX_07_A08_SXTS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵϰͶ��")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ҵ")]
            public Int32 QYID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ʵϰ�ƻ�")]
            public Int32 SXJHID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ͷ��ѧ��")]
            public Int32 XSXXID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ͷ��ʱ��")]
            public DateTime TSSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "Ͷ��ԭ��")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TSYY { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "Ͷ�߽��")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TSJG { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ҵ����")]
            [StringLength(300)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QYJY { get; set; }


        }
    }
}
