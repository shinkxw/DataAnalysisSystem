namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_10_DXZ_metadata))]
    public partial class EDU_ELE_10_DXZ
    {
        public EDU_ELE_10_DXZ()
        {
            DXZMC = "";
            DXIDLB = "";
            DXMCLB = "";
        }
        public class EDU_ELE_10_DXZ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DXZMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����ID�б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DXIDLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DXMCLB { get; set; }


        }
    }
}
