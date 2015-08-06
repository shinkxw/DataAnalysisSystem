namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZZJX_55_A01_FZXX_metadata))]
    public partial class EDU_ZZJX_55_A01_FZXX
    {
        public EDU_ZZJX_55_A01_FZXX()
        {
            FZMC = "";
            XFPDBIDLB = "";
            JDPDBIDLB = "";
        }
        public class EDU_ZZJX_55_A01_FZXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String FZMC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���ֵ")]
            [Range(typeof(decimal), "0", "999")]
            public decimal ZDZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Сֵ")]
            [Range(typeof(decimal), "0", "999")]
            public decimal ZXZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������")]
            [Range(typeof(decimal), "0", "999")]
            public decimal JGX { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "���޶�Ӧ��")]
            [Range(typeof(decimal), "0", "999")]
            public decimal MXF { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�⿼��Ӧ��")]
            [Range(typeof(decimal), "0", "999")]
            public decimal MKF { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ѧ��������ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String XFPDBIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����������ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JDPDBIDLB { get; set; }


        }
    }
}
