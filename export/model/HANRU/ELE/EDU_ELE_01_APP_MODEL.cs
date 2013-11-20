namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ELE_01_APP_metadata))]
    public partial class EDU_ELE_01_APP
    {
        public EDU_ELE_01_APP()
        {
            NAME = "";
            URL = "";
            AUTHIP = "";
            SM = "";
            DLCSLB = "";
            MNDLJS = "";
        }
        public class EDU_ELE_01_APP_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "Ӧ��")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "Ӧ������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NAME { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��ַ")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String URL { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "����IP")]
            [StringLength(200)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String AUTHIP { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "˵��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SM { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��¼��ʽ")]
            public Int32 DLFS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ӧ��״̬")]
            public Int32 STATUS { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "Ӧ�����")]
            public Int32 TYPE { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��¼�����б�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DLCSLB { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "ģ���¼JS")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String MNDLJS { get; set; }


        }
    }
}
