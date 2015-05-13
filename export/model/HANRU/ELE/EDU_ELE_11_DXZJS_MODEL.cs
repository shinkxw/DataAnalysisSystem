namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_11_DXZJS_metadata))]
    public partial class EDU_ELE_11_DXZJS
    {
        public EDU_ELE_11_DXZJS()
        {
            JSMC = "";
            DXZJDBMJH = "";
            DXZJDMCLB = "";
        }
        public class EDU_ELE_11_DXZJS_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "������")]
            public Int32 DXZID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ɫ���")]
            public Int32 JSLBID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ɫ����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JSMC { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������ڵ���뼯��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DXZJDBMJH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������ڵ������б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DXZJDMCLB { get; set; }


        }
    }
}
