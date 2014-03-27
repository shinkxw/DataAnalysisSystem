namespace HanRuEdu.LDAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    [MetadataType(typeof(EDU_ZXJX_04_01_JCJBXX_metadata))]
    public partial class EDU_ZXJX_04_01_JCJBXX
    {
        public EDU_ZXJX_04_01_JCJBXX()
        {
            JCDM = "";
            JCMC = "";
            DYZZ = "";
            BC = "";
        }
        public class EDU_ZXJX_04_01_JCJBXX_metadata
        {
            [Required(ErrorMessage = "����")]
            [Display(Name = "���")]
            public Int32 ID { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "ѧУ")]
            public Int32 SCHOOLID { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�̲Ĵ���")]
            [StringLength(13)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JCDM { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "�̲�����")]
            [StringLength(60)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String JCMC { get; set; }


            [Display(Name = "�����")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CBH { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "��һ����")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String DYZZ { get; set; }


            [Display(Name = "��������")]
            [StringLength(90)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String QTZZ { get; set; }


            [Required(ErrorMessage = "����",AllowEmptyStrings = true)]
            [Display(Name = "���")]
            [StringLength(30)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String BC { get; set; }


            [Display(Name = "ӡ��")]
            [StringLength(2)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String YC { get; set; }


            [Display(Name = "�۸�")]
            [Range(typeof(decimal), "0", "999999")]
            public decimal JG { get; set; }


            [Display(Name = "������")]
            [StringLength(180)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CBS { get; set; }


            [Display(Name = "��������")]
            [StringLength(8)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String CBRQ { get; set; }


            [Display(Name = "�Ƿ�����ϰ��")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFYLXC { get; set; }


            [Display(Name = "�Ƿ��н̲ν̸�")]
            [StringLength(1)]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String SFYJCJF { get; set; }


            [Display(Name = "���ݼ��")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            public String NRJJ { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ǰ״̬")]
            public Int32 DQZT { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��Ϳ��")]
            public Int32 ZDKC { get; set; }


            [Required(ErrorMessage = "����")]
            [Display(Name = "��ǰ���")]
            public Int32 DQKC { get; set; }


        }
    }
}
