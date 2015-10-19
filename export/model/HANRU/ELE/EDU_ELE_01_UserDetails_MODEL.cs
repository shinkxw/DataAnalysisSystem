namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_01_UserDetails_metadata))]
    public partial class EDU_ELE_01_UserDetails
    {
        public EDU_ELE_01_UserDetails()
        {
            LoginName = "";
        }
        public class EDU_ELE_01_UserDetails_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�û�")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String LoginName { get; set; }


            [Display(Name = "�û���Ϣһ")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Detail1 { get; set; }


            [Display(Name = "�û���Ϣ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Detail2 { get; set; }


            [Display(Name = "�û���Ϣ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Detail3 { get; set; }


            [Display(Name = "�û���Ϣ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Detail4 { get; set; }


            [Display(Name = "�û���Ϣ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Detail5 { get; set; }


            [Display(Name = "�û���Ϣ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String Detail6 { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "�Ƿ���������")]
            public Int32 IsDataRow { get; set; }


        }
    }
}
