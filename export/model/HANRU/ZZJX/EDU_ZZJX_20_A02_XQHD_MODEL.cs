namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_20_A02_XQHD_metadata))]
    public partial class EDU_ZZJX_20_A02_XQHD
    {
        public EDU_ZZJX_20_A02_XQHD()
        {
            ReactionTime = new DateTime(1900, 1, 1);
            AdviseToSchool = "";
            AdviseToArt = "";
            OtherAdvise = "";
            Retroaction = "";
            AdviseToStudent = "";
        }
        public class EDU_ZZJX_20_A02_XQHD_metadata
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
            [Display(Name = "����ʱ��")]
            public DateTime ReactionTime { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ҵ��ѧУ��������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String AdviseToSchool { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ҵ��ѧ��ְҵ���ܽ���")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String AdviseToArt { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String OtherAdvise { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Retroaction { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ʵϰ���������Ľ���")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String AdviseToStudent { get; set; }


        }
    }
}
