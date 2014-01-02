namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_22_A05_SXTS_metadata))]
    public partial class EDU_ZZJX_22_A05_SXTS
    {
        public EDU_ZZJX_22_A05_SXTS()
        {
            TsTime = DateTime.Now;
            TsReason = "";
            TsResult = "";
            ComSuggest = "";
        }
        public class EDU_ZZJX_22_A05_SXTS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ҵ")]
            public Int32 ComID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧ��")]
            public Int32 StuID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ͷ��ʱ��")]
            public DateTime TsTime { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "Ͷ��ԭ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TsReason { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "Ͷ�߽��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String TsResult { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "Ͷ�߽���")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ComSuggest { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ͷ������")]
            public Int32 TypeID { get; set; }


        }
    }
}
