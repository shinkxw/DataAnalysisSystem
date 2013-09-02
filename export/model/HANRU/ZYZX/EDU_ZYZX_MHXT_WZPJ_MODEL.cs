namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZYZX_MHXT_WZPJ_metadata))]
    public partial class EDU_ZYZX_MHXT_WZPJ
    {
        public EDU_ZYZX_MHXT_WZPJ()
        {
            PJR = "";
            YJDZ = "";
            PJNR = "";
            HF = "";
        }
        public class EDU_ZYZX_MHXT_WZPJ_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "����")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��վ")]
            public Int32 WEBID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��վ����")]
            public Int32 WZID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "������")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PJR { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ʼ���ַ")]
            [StringLength(40)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YJDZ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����ʱ��")]
            public DateTime PJSJ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��������")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String PJNR { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "����״̬")]
            public Int32 PJZT { get; set; }


            [Display(Name = "�����")]
            [StringLength(50)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SHR { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�ظ�")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String HF { get; set; }


        }
    }
}
