namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_OAXT_32_A03_DCWJTMXX_metadata))]
    public partial class EDU_OAXT_32_A03_DCWJTMXX
    {
        public EDU_OAXT_32_A03_DCWJTMXX()
        {
            SelectItem = "";
        }
        public class EDU_OAXT_32_A03_DCWJTMXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������Ŀ")]
            public Int32 TMID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�����ʾ�")]
            public Int32 WJID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѡ��")]
            [StringLength(100)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SelectItem { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѡ���ֵ")]
            public Int32 XXFZ { get; set; }


        }
    }
}