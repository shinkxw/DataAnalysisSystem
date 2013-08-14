namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_01_ROLE_metadata))]
    public partial class EDU_ELE_01_ROLE
    {
        public EDU_ELE_01_ROLE()
        {
            NAME = "";
            ModIDLst = "";
        }
        public class EDU_ELE_01_ROLE_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "��ɫ")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ӧ��")]
            public Int32 APPID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ɫ��")]
            [StringLength(20)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NAME { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ɫ������")]
            public Int32 PID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ɫ�ܷ��ʵ�ģ���б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String ModIDLst { get; set; }


        }
    }
}
